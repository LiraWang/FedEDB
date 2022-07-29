from charm.toolbox.pairinggroup import PairingGroup, ZR, G1, G2, GT, pair
from charm.toolbox.ABEnc import ABEnc
from datetime import datetime
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
        dic_g_i = pk['g_i']
        n = pk['n']
        beta_2 = msk['beta_2']
        k_agg = 1
        start_u = time.perf_counter()  
        for k in S:
            k_agg *= (dic_g_i[n + 1 - k] ** beta_2)
        end_u= time.perf_counter()
        print('用时：{:.5f}s'.format(end_u - start_u))
        return { 'k_agg': k_agg}


def main():
    print('## output test')
    pairing_group = PairingGroup('SS512')
    cpabe = AGGABE(pairing_group)
    # run set up
    print('---------Setup---------')
    (pk, msk) = cpabe.agg_setup(5)
    # run key generation
    print('---------KeyGen---------')
    S = [3]
    key_gen = cpabe.agg_keygen(pk, msk,  S)

if __name__ == '__main__':
    main()