from charm.toolbox.pairinggroup import PairingGroup, ZR, G1, G2, GT, pair
from charm.toolbox.ABEnc import ABEnc
from read1 import read
import time
import socket
import json
def index(pk):
    start_time = time.perf_counter()  # 返回系统运行时间
    x=read()
    l=x.main()
    end_time = time.perf_counter()  # 返回系统运行时间
    print('用时2：{:.5f}s'.format(end_time - start_time))
    group = PairingGroup('SS512')
    n = pk['n']
    #g = pk['g']
    #v = pk['v']
    #x=pk['g'].encode('utf-8')
    #g=group.deserialize(x)
    #g_a = pk['g_a']
    #g_b = pk['g_b']
    #g_c = pk['g_c']

    y=pk['v'].encode('utf-8')
    v = group.deserialize(y)
    a=pk['g_a'].encode('utf-8')
    g_a=group.deserialize(a)
    b=pk['g_b'].encode('utf-8')
    g_b=group.deserialize(b)
    c=pk['g_a'].encode('utf-8')
    g_c=group.deserialize(c)

    h_i_2 = pk['h_i_2']
    for i in h_i_2.keys():
        x=h_i_2[i].encode('utf-8')
        h_i_2[i]=group.deserialize(x)

    sk_i = pk['sk_i']
    for i in sk_i.keys():
        x = sk_i[i].encode('utf-8')
        sk_i[i] = group.deserialize(x)

    # for each DO
    C_agg = {}
    W_all = {}

    policy = {}
    for i in range(1, n + 1):
        r_i_l = group.random(ZR)
        #(ek_i_1, ek_i_2) = sk_i
        ek_i_1=sk_i['1']
        ek_i_2=sk_i['2']
        c_i_l_1 = ek_i_1 ** r_i_l
        c_i_l_2 = ek_i_2 ** r_i_l
        c_i_l_3 = (v * h_i_2['1']) ** r_i_l
        C_agg = (c_i_l_1, c_i_l_2, c_i_l_3)

        r_i_1 = group.random(ZR)
        r_i_2 = group.random(ZR)
        W = g_c ** r_i_1
        W_bar = g_b ** r_i_2
        W_k = []
        for w_l in l:
            W_0 = (g_a ** (r_i_1 + r_i_2)) * ((g_b ** (group.hash(str(w_l), ZR))) ** r_i_1)
            W_k.append(W_0)
        W_all = (W, W_k, W_bar)

    return {'C_agg': C_agg, 'W_all': W_all}


def main():

    tcp_server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    tcp_server_socket.bind(("111.132.6.123", 80))
    tcp_server_socket.listen(128) 
    new_client_socket, client_addr = tcp_server_socket.accept()
    print(client_addr)
    recv_data = new_client_socket.recv(32768).decode("utf-8")  
    pk=json.loads(recv_data)
    I = index(pk)
    msg = "receive ok"
    new_client_socket.send(msg.encode("utf-8"))
    new_client_socket.close()  
    tcp_server_socket.close() 

if __name__ == "__main__":
    main()
