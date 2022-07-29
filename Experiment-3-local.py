from charm.toolbox.pairinggroup import PairingGroup, ZR, G1, G2, GT, pair
from charm.toolbox.ABEnc import ABEnc
from read1 import read
import time


class AGGABE(ABEnc):

    def __init__(self, group_obj, verbose=False):
        ABEnc.__init__(self)
        self.group = group_obj
       # self.util = MSP(self.group, verbose)  #msp

    def agg_setup(self, n):

        g = self.group.random(G1)
        beta_2 = self.group.random(ZR)
        alpha = self.group.random(ZR)
        a = self.group.random(ZR)
        b = self.group.random(ZR)
        c = self.group.random(ZR)
        v = g ** beta_2
        g_a = g ** a
        g_b = g ** b
        g_c = g ** c

        dic_g_i = {}
        for i in range(1, 2*n + 1):
            g_i = g ** (alpha ** i)
            dic_g_i[i] = g_i
            # print(i, dic_g_i[i])

        pk = {'g': g, 'v': v, 'n': n, 'g_i': dic_g_i, 'g_a': g_a, 'g_b': g_b, 'g_c': g_c}
        msk = {'a': a, 'b': b, 'c': c, 'beta_2': beta_2}
        return pk, msk

    def agg_keygen(self, pk, msk, S):
        g = pk['g']
        # generate key for cs
        beta_1 = self.group.random(ZR)
        u = g ** beta_1
        # key_cs = {'pk_cs': u, 'sk_cs': beta_1}

        # generate key for dta owners
        dic_g_i = pk['g_i']
        n = pk['n']
        h_i_1 = {}  # n * n
        h_i_2 = {}  # n * 2n
        sk_i = {}
        for i in range(1, n+1):
            gama_i_1 = self.group.random(ZR)
            gama_i_2 = self.group.random(ZR)

            dic_h_1 = {}
            for j in range(1, n+1):
                temp_1 = dic_g_i[j] ** gama_i_1
                dic_h_1[j] = temp_1
            h_i_1[i] = dic_h_1

            ek_i_1 = u ** gama_i_1
            ek_i_2 = pk['v'] ** gama_i_1
            sk_i[i] = (ek_i_1, ek_i_2)

            dic_h_2 = {}
            for j in range(1, 2*n + 1):
                temp_2 = dic_g_i[j] ** gama_i_2
                dic_h_2[j] = temp_2
            h_i_2[i] = dic_h_2

        # generate key for users

        # authorize user with DOs
        beta_2 = msk['beta_2']
        k_agg = 1
        for k in S:
            k_agg *= (dic_g_i[n + 1 - k] ** beta_2)
        return { 'pk_cs': u, 'sk_cs': beta_1, 'h_i_1': h_i_1, 'h_i_2': h_i_2, 'sk_i': sk_i,'k_agg': k_agg}

    def agg_index(self, pk, key_gen,l):
        n = pk['n']
        g = pk['g']
        v = pk['v']

        h_i_2 = key_gen['h_i_2']
        sk_i = key_gen['sk_i']

        # for each DO
        C_agg = {}
        W_all = {}

        policy = {}
        for i in range(1, n + 1):
            r_i_l = self.group.random(ZR)
            (ek_i_1, ek_i_2) = sk_i[i]
            c_i_l_1 = ek_i_1 ** r_i_l
            c_i_l_2 = ek_i_2 ** r_i_l
            c_i_l_3 = (v * h_i_2[i][i]) ** r_i_l
            C_agg[i] = (c_i_l_1, c_i_l_2, c_i_l_3)

            r_i_1 = self.group.random(ZR)
            r_i_2 = self.group.random(ZR)
            g_a = pk['g_a']
            g_b = pk['g_b']
            g_c = pk['g_c']
            W = g_c ** r_i_1
            W_bar = g_b ** r_i_2
            W_k=[]
            for w_l in l:
                W_0 = (g_a ** (r_i_1 + r_i_2)) * ((g_b ** (self.group.hash(str(w_l), ZR))) ** r_i_1)
                W_k.append(W_0)
            W_all[i]=(W, W_k, W_bar)
            #print(type(W_k))

        return {'C_agg': C_agg, 'W_all': W_all}

def main():
    print('## output test')
    pairing_group = PairingGroup('SS512')
    cpabe = AGGABE(pairing_group)
    # run set up
    print('---------Setup---------')
    (pk, msk) = cpabe.agg_setup(1)

    # run key generation
    print('---------KeyGen---------')
    S = [1]
    key_gen = cpabe.agg_keygen(pk, msk,  S)

    # set keyword set
    x=read()
    l=x.main()
    #print(len(l))
    # generate index

    print('---------Index---------')
    start_time= time.perf_counter()  
    I = cpabe.agg_index(pk, key_gen, l)
    end_time = time.perf_counter()  
    print('用时：{:.5f}s'.format(end_time- start_time))

if __name__ == '__main__':
    main()
