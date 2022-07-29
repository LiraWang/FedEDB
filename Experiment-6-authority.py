from charm.toolbox.pairinggroup import PairingGroup, ZR, G1, G2, GT, pair
from charm.toolbox.ABEnc import ABEnc
from read1 import read
import time
import socket
import json
import demjson
class AGGABE(ABEnc):

    def __init__(self, group_obj, verbose=False):
        ABEnc.__init__(self)
        self.group = group_obj

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
        h_i_1 = {}
        h_i_2 = {}
        sk_i = {}
        for i in range(1, n + 1):
            gama_i_1 = self.group.random(ZR)
            gama_i_2 = self.group.random(ZR)

            dic_h_1 = {}
            for j in range(1, n + 1):
                temp_1 = dic_g_i[j] ** gama_i_1
                dic_h_1[j] = temp_1
            h_i_1[i] = dic_h_1

            ek_i_1 = u ** gama_i_1
            ek_i_2 = pk['v'] ** gama_i_1
            sk_i[i]={}
            sk_i[i][1] = ek_i_1
            sk_i[i][2] = ek_i_2
            #sk_i[i] = (ek_i_1, ek_i_2)

            # iteration with 2n
            dic_h_2 = {}
            for j in range(1, 2 * n + 1):
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

def main():
    print('## output test')
    pairing_group = PairingGroup('SS512')
    cpabe = AGGABE(pairing_group)
    # run set up
    print('---------Setup---------')
    (pk, msk) = cpabe.agg_setup(2)

    # run key generation
    print('---------KeyGen---------')
    S = [1]
    key_gen = cpabe.agg_keygen(pk, msk,  S)

    # set keyword set
    # generate index
    pk_o={}
    pk_u={}
    pk_s={}
    pk_s['S']=S
    for i in pk.keys():
        if isinstance(pk[i], int):
            pk_o[i]=pk[i]
            pk_s[i]=pk[i]
        elif isinstance(pk[i], dict):
            continue
        else:
            x = pairing_group.serialize(pk[i])
            pk_o[i] = x.decode('UTF-8')
            pk_u[i] = x.decode('UTF-8')
            pk_s[i] = x.decode('UTF-8')

    for i in msk.keys():
        y = pairing_group.serialize(msk[i])
        pk_u[i] = y.decode('UTF-8')

    for i in key_gen.keys():
        if i=='pk_cs' or i=='sk_cs':
            x = pairing_group.serialize(key_gen[i])
            pk_s[i] = x.decode('UTF-8')
            pk_u[i] = x.decode('UTF-8')

        elif i=='h_i_1'or i=='h_i_2' :
            if isinstance(key_gen[i], dict):
                pk_o[i] = {}
                pk_s[i]={}
                for j in key_gen[i].keys():
                    if isinstance(key_gen[i][j], dict):
                        pk_o[i][j]={}
                        pk_s[i][j]={}
                        for k in key_gen[i][j].keys():
                            x = pairing_group.serialize(key_gen[i][j][k])
                            pk_o[i][j][k] = x.decode('UTF-8')
                            pk_s[i][j][k] = x.decode('UTF-8')
        elif i=='sk_i':
            if isinstance(key_gen[i], dict):
                pk_o[i] = {}
                for j in key_gen[i].keys():
                    if isinstance(key_gen[i][j], dict):
                        pk_o[i][j]={}
                        for k in key_gen[i][j].keys():
                            x = pairing_group.serialize(key_gen[i][j][k])
                            pk_o[i][j][k]= x.decode('UTF-8')
        else:
            x = pairing_group.serialize(key_gen[i])
            pk_u[i] = x.decode('UTF-8')
    print(pk_s)
    print(pk_o)
    print(pk_u)

    print('---------owner---------')
    tcp_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    tcp_socket.connect(("111.132.6.123", 80))
    o_data = json.dumps(pk_o)
    tcp_socket.send(o_data.encode('utf-8'))
    recv_data = tcp_socket.recv(32768)
    print(recv_data.decode("utf-8"))
    tcp_socket.close()

    print('---------user---------')
    tcp_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    tcp_socket.connect(("111.132.6.122", 5400))
    u_data = json.dumps(pk_u)
    tcp_socket.send(u_data.encode("utf-8"))
    recv_data = tcp_socket.recv(32768)
    print(recv_data.decode("utf-8"))
    tcp_socket.close()


    print('---------Server---------')
    tcp_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    tcp_socket.connect(("111.132.6.124", 5600))
    s_data = json.dumps(pk_s)
    tcp_socket.send(s_data.encode("utf-8"))
    recv_data = tcp_socket.recv(32768)
    print(recv_data.decode("utf-8"))
    tcp_socket.close()


if __name__ == '__main__':
    main()