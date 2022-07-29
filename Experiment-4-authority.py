from charm.toolbox.pairinggroup import PairingGroup, ZR, G1, G2, GT, pair
from charm.toolbox.ABEnc import ABEnc
import json
import socket
import time
import demjson


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

        # generate key for dta owners
        dic_g_i = pk['g_i']
        n = pk['n']

        # generate key for users

        # authorize user with DOs
        beta_2 = msk['beta_2']
        k_agg = 1
        for k in S:
            k_agg *= (dic_g_i[n + 1 - k] ** beta_2)
        return { 'pk_cs': u, 'sk_cs': beta_1,'k_agg': k_agg}

    '''def trap(self,pk):
        x = self.group.random(ZR)
        s = self.group.random(ZR)
        l = ['check', 'palu', 'morris', 'ty', 'payroll', 'rc', 'assigned', 'cn', 'jeff', 'arnold']
        # 'ou', 'gco', 'enron', 'updated', 'concur', 'expense', 'xms', 'upgrade', 'july', 'corporate'
        # 'management', 'solution', 'unde', 'rgo', 'version', 'integrated', 'center', 'isc', 'developed', 'transition'
        for i in pk.keys():
            y = pk[i].encode('utf-8')
            pk[i] = self.group.deserialize(y)
        print(pk)
        a = pk['a']
        b = pk['b']
        b_inverse = 1 / b
        c = pk['c']
        A = (a * c * s) * b_inverse
        Tr_1 = pk['k_agg'] * (pk['v'] ** x)
        Tr_2 = pk['pk_cs'] ** x
        tok_1 = []
        for w_l in l:
            tok_ = (pk['g_a'] * (pk['g_b'] ** (self.group.hash(str(w_l), ZR)))) ** s
            tok_1.append(tok_)
        tok_2 = pk['g_c'] ** s
        tok_3 = pk['g'] ** A

        return {'Tr_1': Tr_1, 'Tr_2': Tr_2, 'tok_1': tok_1, 'tok_2': tok_2, 'tok_3': tok_3}'''


def main():
    print('## output test')
    pairing_group = PairingGroup('SS512')
    cpabe = AGGABE(pairing_group)
    # run set up
    print('---------Setup---------')
    (pk, msk) = cpabe.agg_setup(5)

    # run key generation
    print('---------KeyGen---------')
    S = [1,3]
    key_gen = cpabe.agg_keygen(pk, msk,  S)

    pk1 ={}
    for i in pk.keys():
        if isinstance(pk[i], int) or isinstance(pk[i], dict):
            continue
        else:
            x = pairing_group.serialize(pk[i])
            pk1[i] = x.decode('UTF-8')

    for i in msk.keys():
        y = pairing_group.serialize(msk[i])
        pk1[i] = y.decode('UTF-8')

    for i in key_gen.keys():
        x = pairing_group.serialize(key_gen[i])
        pk1[i] = x.decode('UTF-8')

    #print(pk1)
    #t=cpabe.trap(pk1)
    #print(t)

    print('---------Trapdoor---------')
    tcp_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    tcp_socket.connect(("111.132.6.123", 80))
    start_time = time.perf_counter() 
    json_data = json.dumps(pk1)
    tcp_socket.send(json_data.encode("utf-8"))
    recv_data = tcp_socket.recv(32768)  
    print(recv_data.decode("utf-8"))
    tcp_socket.close()
    end_time = time.perf_counter()  
    print('用时2：{:.5f}s'.format(end_time - start_time))

if __name__ == '__main__':
    main()