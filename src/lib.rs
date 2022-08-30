//! This contract implements simple counter backed by storage on blockchain.
//!
//! The contract provides methods to [increment] / [decrement] counter and
//! [get it's current value][get_num] or [reset].
//!
//! [increment]: struct.Counter.html#method.increment
//! [decrement]: struct.Counter.html#method.decrement
//! [get_num]: struct.Counter.html#method.get_num
//! [reset]: struct.Counter.html#method.reset

#[macro_use]
mod macros;

pub mod commitment_scheme;
pub mod fft;
pub mod lagrange_interpolation;
pub mod serialisation;
pub mod transcript;
mod utils;

use near_sdk::borsh::{self, BorshDeserialize, BorshSerialize};
use near_sdk::{env, near_bindgen};
use commitment_scheme::kzg10::Commitment;
use crate::commitment_scheme::kzg10::{Proof, PublicParameters};
use dusk_bls12_381::BlsScalar;
use rand::rngs::StdRng;
use rand_core::SeedableRng;
use crate::fft::Polynomial;
use crate::lagrange_interpolation::{compute_f, compute_dual_vec, poly_interpolation};
use std::fs::File;
use std::io::Write;
use dusk_jubjub::Scalar;
use std::time::{Instant, SystemTime};
use std::alloc::System;
use std::ops::Mul;
use chrono::{Duration};

near_sdk::setup_alloc!();

// add the following attributes to prepare your code for serialization and invocation on the blockchain
// More built-in Rust attributes here: https://doc.rust-lang.org/reference/attributes.html#built-in-attributes-index
#[near_bindgen]
#[derive(Default, BorshDeserialize, BorshSerialize)]
pub struct Counter {
    // See more data types at https://doc.rust-lang.org/book/ch03-02-data-types.html
    val: i8, // i8 is signed. unsigned integers are also available: u8, u16, u32, u64, u128
    res: bool,
}

#[near_bindgen]
impl Counter {
    pub fn get_num(&self) -> bool {
        return self.res;
    }

    ///commitment
    pub fn com(&self) {
        let sy_time = SystemTime::now();
        // let sy_time = chrono::Local::now();


        let deg = 4;
        let srs = PublicParameters::setup(deg, &mut StdRng::from_seed([3u8;32])).unwrap();
        let (proving_key, opening_key) = srs.trim(deg).unwrap();
        let mut dt = vec![];
        let mut cur = BlsScalar::from(3);
        dt.push(cur);
        for _ in 0..deg {
            cur = cur + BlsScalar::one();
            dt.push(cur);
        }
        let dt_poly = Polynomial::from_coefficients_vec(dt.clone());
        let commit_poly = proving_key.commit(&dt_poly).unwrap();
        println!("commitment time:");
        // let sy_time_2 = chrono::Local::now();
        // println!("{:?}", Duration::nanoseconds((sy_time_2-sy_time).num_nanoseconds().unwrap()));
        println!("{:?}", SystemTime::now().duration_since(sy_time).unwrap().as_millis());
        // output the size of the proof
        // println!("{:?}", dt);
        // let path = "./data/cmsize.txt";
        // let mut output = File::create(path).unwrap();
        // writeln!(output, "{:?}", commit_poly);
    }

    pub fn prove_and_verify(&mut self) {
        let sy_time = SystemTime::now();
        //srs
        let max_degree = 25 as usize;
        let srs = PublicParameters::setup(max_degree, &mut StdRng::from_seed([2u8;32])).unwrap();
        // let srs = PublicParameters::setup(max_degree, &mut rand::thread_rng()).unwrap();
        let (proving_key, opening_key) = srs.trim(max_degree).unwrap();

        // the random point that is chosen by the Verifier
        let rand_point = BlsScalar::from(100).invert().unwrap();

        //simulate the challenge and compute its invert
        let k = 4;
        let mut powers_of_x = vec![];
        let mut content_vec = vec![];
        let mut locate_vec_ori = vec![];
        //all one, help to save the packed challenges
        let mut cur = BlsScalar::one();
        let mut locate = 0;
        for _ in 0..(1 << k) {
            powers_of_x.push(cur);
            content_vec.push(BlsScalar::one());
            locate_vec_ori.push(locate);
            // println!("the current locate_vec_ori is {}", locate);
            cur = rand_point * cur;
            locate += 1;
        }


        let mut challenges = vec![];
        let mut challenges_inv = vec![];
        let mut packed_challenges = content_vec;

        let mut cur_k = k;
        let mut b = powers_of_x.clone();
        //the current challenge should be a random challenge
        let mut curchallenge = BlsScalar::from(109).invert().unwrap();
        while b.len() > 1 {
            let l = 1 << (cur_k - 1);
            let mut curchallenge_inv = curchallenge.invert().unwrap();
            challenges.push(curchallenge);
            challenges_inv.push(curchallenge_inv);

            for j in 0..l {
                b[j] = (b[j] * curchallenge_inv) + (b[j + l] * curchallenge);
            }
            for i in 0..(1 << k) {
                let tag  = locate_vec_ori[i] / l % 2;
                // println!("the current tag is {}", tag);
                if tag == 0 {
                    packed_challenges[i] = packed_challenges[i] * curchallenge_inv.clone();
                } else if tag == 1{ packed_challenges[i] = packed_challenges[i] * curchallenge.clone(); }
            }


            /// Shortens the vector, keeping the first `len` elements and dropping
            /// the rest.
            b.truncate(l);

            cur_k -= 1;
            curchallenge = (curchallenge.clone() + BlsScalar::from(129)).square();
        }

        let s_packed_challenge = packed_challenges;
        let s_packed_challenge_poly = Polynomial::from_coefficients_vec(s_packed_challenge.clone());


        let length = s_packed_challenge.len();

        //compute the dual vector and commit to it
        let dual_s = compute_dual_vec(s_packed_challenge_poly.clone(), length.clone());
        let dual_s_2 = Polynomial::from_coefficients_vec(dual_s);

        let commit_dual_s_poly = proving_key.commit(&s_packed_challenge_poly).unwrap();

        let z = s_packed_challenge_poly.evaluate(&rand_point);

        let proof = proving_key.open_single(&s_packed_challenge_poly, &z, &rand_point).unwrap();
        println!("proving time:");
        println!("{:?}", SystemTime::now().duration_since(sy_time).unwrap().as_millis());

        /// output the size of the proof
        // println!("{:?}", proof);
        // let path = "./data/proofsize.txt";
        // let mut output = File::create(path).unwrap();
        // writeln!(output, "{:?}", proof);
        //witness
        // let witness_dual_s = proving_key.compute_single_witness(&s_packed_challenge_poly, &rand_point);
        // let commit_witness_dual_s = proving_key.commit(&witness_dual_s).unwrap();

        let sy_time2 = SystemTime::now();
        let s = challenges;
        let mut s_invert = challenges_inv;

        let z_compute_f = compute_f(rand_point, &s, &s_invert);
        assert_eq!(z_compute_f, z);

        let ok = opening_key.check(rand_point, proof);
        assert!(ok);
        self.res = true;
        println!("verification time:");
        println!("{:?}", SystemTime::now().duration_since(sy_time2).unwrap().as_millis());
    }

    pub fn prove_and_verify_plain(&mut self) {
        let sy_time = SystemTime::now();
        //srs
        let max_degree = 25 as usize;
        let srs = PublicParameters::setup(max_degree, &mut StdRng::from_seed([2u8;32])).unwrap();
        // let srs = PublicParameters::setup(max_degree, &mut rand::thread_rng()).unwrap();
        let (proving_key, opening_key) = srs.trim(max_degree).unwrap();

        // the random point that is chosen by the Verifier
        let rand_point = BlsScalar::from(100).invert().unwrap();

        //simulate the challenge and compute its invert
        let k = 4;
        let mut powers_of_x = vec![];
        let mut content_vec = vec![];
        let mut locate_vec_ori = vec![];
        //all one, help to save the packed challenges
        let mut cur = BlsScalar::one();
        let mut locate = 0;
        for _ in 0..(1 << k) {
            powers_of_x.push(cur);
            content_vec.push(BlsScalar::one());
            locate_vec_ori.push(locate);
            // println!("the current locate_vec_ori is {}", locate);
            cur = rand_point * cur;
            locate += 1;
        }


        let mut challenges = vec![];
        let mut challenges_inv = vec![];
        let mut packed_challenges = content_vec;

        let mut cur_k = k;

        let mut b = powers_of_x.clone();
        //the current challenge should be a random challenge
        let mut curchallenge = BlsScalar::from(109).invert().unwrap();
        while b.len() > 1 {
            let l = 1 << (cur_k - 1);
            let mut curchallenge_inv = curchallenge.invert().unwrap();
            challenges.push(curchallenge);
            challenges_inv.push(curchallenge_inv);

            for j in 0..l {
                b[j] = (b[j] * curchallenge_inv) + (b[j + l] * curchallenge);
            }
            for i in 0..(1 << k) {
                let tag  = locate_vec_ori[i] / l % 2;
                // println!("the current tag is {}", tag);
                if tag == 0 {
                    packed_challenges[i] = packed_challenges[i] * curchallenge_inv.clone();
                } else if tag == 1{ packed_challenges[i] = packed_challenges[i] * curchallenge.clone(); }
            }


            /// Shortens the vector, keeping the first `len` elements and dropping
            /// the rest.
            b.truncate(l);

            cur_k -= 1;
            curchallenge = (curchallenge.clone() + BlsScalar::from(129)).square();
        }

        let s_packed_challenge = packed_challenges;
        let s_packed_challenge_poly = Polynomial::from_coefficients_vec(s_packed_challenge.clone());
        let length = s_packed_challenge.len();


        let mut G_vec = vec![];
        for _ in 0..length{
            let mut seed = 1u8;
            G_vec.push(utils::random_g1_point(&mut StdRng::from_seed([seed;32])));
            seed = seed + 1u8;
        }
        let mut mul_result = G_vec[0].mul(s_packed_challenge[0]);
        for i in 0..length-1 {
            mul_result = mul_result.add(&G_vec[i+1].mul(s_packed_challenge[i+1]))
        }

        println!("plain proving time:");
        println!("{:?}", SystemTime::now().duration_since(sy_time).unwrap().as_millis());

        /// output the size of the proof
        // println!("{:?}", proof);
        // let path = "./data/proofsize.txt";
        // let mut output = File::create(path).unwrap();
        // writeln!(output, "{:?}", proof);
        //witness
        // let witness_dual_s = proving_key.compute_single_witness(&s_packed_challenge_poly, &rand_point);
        // let commit_witness_dual_s = proving_key.commit(&witness_dual_s).unwrap();

        let sy_time2 = SystemTime::now();
        let s = challenges;
        let mut s_invert = challenges_inv;

        let mut mul_result_v = G_vec[0].mul(s_packed_challenge[0]);
        for i in 0..length-1 {
            mul_result_v = mul_result_v.add(&G_vec[i+1].mul(s_packed_challenge[i+1]))
        }

        self.res = true;
        assert_eq!(mul_result, mul_result_v);
        println!("plain verification time:");
        println!("{:?}", SystemTime::now().duration_since(sy_time2).unwrap().as_millis());
    }
}

// unlike the struct's functions above, this function cannot use attributes #[derive(…)] or #[near_bindgen]
// any attempts will throw helpful warnings upon 'cargo build'
// while this function cannot be invoked directly on the blockchain, it can be called from an invoked function
// fn after_counter_change() {
//     // show helpful warning that i8 (8-bit signed integer) will overflow above 127 or below -128
//     env::log("Make sure you don't overflow, my friend.".as_bytes());
// }

/*
 * the rest of this file sets up unit tests
 * to run these, the command will be:
 * cargo test --package rust-counter-tutorial -- --nocapture
 * Note: 'rust-counter-tutorial' comes from cargo.toml's 'name' key
 */

// use the attribute below for unit tests
#[cfg(test)]
mod tests {
    use super::*;
    use near_sdk::MockedBlockchain;
    use near_sdk::{testing_env, VMContext};

    // part of writing unit tests is setting up a mock context
    // in this example, this is only needed for env::log in the contract
    // this is also a useful list to peek at when wondering what's available in env::*
    fn get_context(input: Vec<u8>, is_view: bool) -> VMContext {
        VMContext {
            current_account_id: "alice.testnet".to_string(),
            signer_account_id: "robert.testnet".to_string(),
            signer_account_pk: vec![0, 1, 2],
            predecessor_account_id: "jane.testnet".to_string(),
            input,
            block_index: 0,
            block_timestamp: 0,
            account_balance: 0,
            account_locked_balance: 0,
            storage_usage: 0,
            attached_deposit: 0,
            prepaid_gas: 10u64.pow(18),
            random_seed: vec![0, 1, 2],
            is_view,
            output_data_receivers: vec![],
            epoch_height: 19,
        }
    }

    #[test]
    fn fastv() {
        let mut contract = Counter {val:0, res: false};
        println!("The initial result: {}", contract.get_num());
        contract.com();
        contract.prove_and_verify();
        println!("The afterwards result: {}", contract.get_num());
        contract.prove_and_verify_plain();

    }
}