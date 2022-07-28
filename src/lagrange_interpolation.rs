///This code can compute the interpolation polynomial for a given vector as well as compute its dual
/// vector which can be used in halo 0.9. Moreover, the fast computation of inner product <s, r> can
/// also be calculated.
use crate::commitment_scheme::kzg10::CommitKey;
use crate::fft::{EvaluationDomain, Evaluations, Polynomial};
use dusk_bls12_381::BlsScalar;
use merlin::Transcript;
use dusk_jubjub::Scalar;

pub fn poly_interpolation(s: Polynomial, length: usize) -> Polynomial {

    let domain = EvaluationDomain::new(length).unwrap();
    // let omega = domain.generator_inv.to_bytes();
    // println!("the fn domain is ");
    // for i in 0..32 {
    //     let temp = omega[i];
    //     println!("{}", temp)
    // }
    let s_poly = Polynomial::from_coefficients_slice(&domain.ifft(&s));
    return s_poly;
}

#[test]
fn test_poly_interpolation() {
    let s = vec![BlsScalar::one(), BlsScalar::from(2u64), BlsScalar::from(3u64), BlsScalar::from(4u64)];
    let domain = EvaluationDomain::new(3).unwrap();
    ///Remember that in the ifft algorithm, the x (a.k.a. checkpoints) is 'omega', which is the inverse
    ///of the generator of the subgroup.
    // println!("the test domain is");
    // let omega = domain.generator_inv.to_bytes();
    // for i in 0..32 {
    //     let temp = omega[i];
    //     println!("{}", temp)
    // }
    // println!("the length is {}", s.len());
    let s = Polynomial::from_coefficients_vec(s);

    let compute_s_poly = poly_interpolation(s, 3);
    let first_evl = compute_s_poly.evaluate(&BlsScalar::one());
    // assert_eq!(first_evl, BlsScalar::one());
    let second_evl = compute_s_poly.evaluate(&domain.group_gen_inv);
    assert_eq!(second_evl, BlsScalar::from(4u64));
    let third_evl = compute_s_poly.evaluate(&domain.group_gen_inv.square());
    // assert_eq!(third_evl, BlsScalar::from(3u64));
    let point = domain.group_gen_inv.square() * domain.group_gen_inv.clone();
    let fourth_evl = compute_s_poly.evaluate(&point);
    // assert_eq!(fourth_evl, BlsScalar::from(4u64));
}

pub fn compute_f(
    x: BlsScalar,
    challenges: &[BlsScalar],
    challenges_inv: &[BlsScalar]
) -> BlsScalar {
    assert!(!challenges.is_empty());
    assert_eq!(challenges.len(), challenges_inv.len());
    println!("the current challenges' length is {}", challenges.len());
    if challenges.len() == 1 {
        return challenges_inv.last().unwrap() + challenges.last().unwrap() * x.clone();
    }else {
        return (challenges_inv.last().unwrap() + challenges.last().unwrap() * x.clone())
            * compute_f(
            x.square(),
            &challenges[0..(challenges.len() - 1)],
            &challenges_inv[0..(challenges_inv.len() - 1)]
        );
    }
}

#[test]
fn test_compute_f() {
    let k = 4;
    let x = BlsScalar::from(100).invert().unwrap();
    let mut powers_of_x = vec![];
    let mut cur = BlsScalar::one();
    for _ in 0..(1 << k) {
        powers_of_x.push(cur);
        cur = x * cur
    }

    let mut challenges = vec![];
    let mut challenges_inv = vec![];
    let mut b = powers_of_x.clone();
    let mut cur_k = k;
    let mut curchallenge = BlsScalar::from(109).invert().unwrap();
    while b.len() > 1 {
        let l = 1 << (cur_k - 1);
        let mut curchallenge_inv = curchallenge.invert().unwrap();
        challenges.push(curchallenge);
        challenges_inv.push(curchallenge_inv);

        for j in 0..l {
            b[j] = (b[j] * curchallenge_inv) + (b[j + l] * curchallenge);
        }

        b.truncate(l);

        cur_k -= 1;
        curchallenge = (curchallenge.clone() + BlsScalar::from(129)).square();
    }
    assert_eq!(b[0], compute_f(x, &challenges, &challenges_inv));
}

///compute the dual vector
pub fn compute_dual_vec(s: Polynomial, length: usize) -> Vec<BlsScalar> {
    let domain = EvaluationDomain::new(length).unwrap();
    let mut check_point = domain.group_gen_inv;
    let mut dual_s_vec = vec![];
    for i in 0..s.degree() + 1 {
        let mut temp = s.evaluate(&check_point);
        dual_s_vec.push(temp);
        check_point = check_point * domain.group_gen_inv;
    }

    return dual_s_vec;
}

///actually, it is a trivial test = =
#[test]
fn test_compute_dual_vec() {
    let s = vec![BlsScalar::zero(), BlsScalar::one()];
    let s = Polynomial::from_coefficients_vec(s);
    let tempp = s.coeffs[1].to_bytes();
    for i in 0..32 {
        let temp = tempp[i];
        println!("{}", temp)
    }

    let length = 2 as usize;
    let domain = EvaluationDomain::new(length).unwrap();
    let point = domain.group_gen_inv;
    let point2 = point.clone().square();
    let result1 = s.evaluate(&point);
    let result2 = s.evaluate(&point2);

    let compute_s_dual_vec = compute_dual_vec(s, length);
    let actual_s_dual_vec = vec![result1, result2];
    assert_eq!(compute_s_dual_vec, actual_s_dual_vec);
}

