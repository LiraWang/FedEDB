from charm.toolbox.pairinggroup import PairingGroup, ZR, G1, G2, GT, pair
from charm.toolbox.ABEnc import ABEnc
from read1 import read
import time
import socket
import json
import demjson
def index(pk):

    group = PairingGroup('SS512')
    n = pk['n']
    g = pk['g']
    v = pk['v']

    h_i_2 = pk['h_i_2']
    sk_i = pk['sk_i']

    # for each DO
    C_agg = {}
    W_all = {}
    r={}
    for i in range(1, n + 1):
        r_i_l = group.random(ZR)
        ek_i_1= sk_i[str(i)]['1']#
        ek_i_2 = sk_i[str(i)]['2']
        c_i_l_1 = ek_i_1 ** r_i_l
        c_i_l_2 = ek_i_2 ** r_i_l
        c_i_l_3 = (v * h_i_2[str(i)][str(i)]) ** r_i_l #
        #C_agg[i] = (c_i_l_1, c_i_l_2, c_i_l_3)
        C_agg[i]={}
        C_agg[i][1]=c_i_l_1
        C_agg[i][2]=c_i_l_2
        C_agg[i][3]=c_i_l_3

        r_i_1 = group.random(ZR)
        r_i_2 = group.random(ZR)
        g_a = pk['g_a']
        g_b = pk['g_b']
        g_c = pk['g_c']
        W = g_c ** r_i_1
        W_bar = g_b ** r_i_2
        #W_all[i] = (W, W_k, W_bar)
        W_all[i]={}
        W_all[i][1]=W
        W_all[i][2]=W_bar
        r[i]={}
        r[i][1]=r_i_1
        r[i][2]=r_i_2
        # print(type(W_k))
    return {'C_agg': C_agg, 'W_all': W_all,'r':r}



def main():
    group = PairingGroup('SS512')
    print('---------index---------')
    tcp_server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

    tcp_server_socket.bind(("111.132.6.123", 80))
    tcp_server_socket.listen(128)
    new_client_socket, client_addr = tcp_server_socket.accept()
    print(client_addr)
    recv_data = new_client_socket.recv(32768).decode("utf-8")  # 1024表示本次接收的最大字节数。
    pk=json.loads(recv_data)
    pk1={}
    for i in pk.keys():
        if isinstance(pk[i], dict):
            pk1[i] = {}
            for j in pk[i].keys():
                if isinstance(pk[i][j],dict):
                    pk1[i][j]={}
                    for k in pk[i][j].keys():
                        x = pk[i][j][k].encode('utf-8')
                        pk1[i][j][k] = group.deserialize(x)
        elif isinstance(pk[i], int):
            pk1[i] = pk[i]
        else:
            x = pk[i].encode('utf-8')
            pk1[i] = group.deserialize(x)
    print(pk1)
    I = index(pk1)
    msg = "owner receive ok"
    new_client_socket.send(msg.encode("utf-8"))
    new_client_socket.close()
    tcp_server_socket.close()

    owner = {}
    for i in I.keys():
        if isinstance(I[i], dict):
            owner[i] = {}
            for j in I[i].keys():
                if isinstance(I[i][j],dict):
                    owner[i][j]={}
                    for k in I[i][j].keys():
                        x = group.serialize(I[i][j][k])
                        owner[i][j][k] = x.decode('UTF-8')

    print(owner)

    print('---------owner->server---------')
    tcp_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    tcp_socket.connect(("111.132.6.124", 5600))
    json_data = json.dumps(owner)
    tcp_socket.send(json_data.encode("utf-8"))
    recv_data = tcp_socket.recv(32768)
    print(recv_data.decode("utf-8"))
    tcp_socket.close()

if __name__ == "__main__":
    main()