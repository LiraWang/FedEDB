from charm.toolbox.pairinggroup import PairingGroup, ZR, G1, G2, GT, pair
from charm.toolbox.ABEnc import ABEnc
import socket
import json
import time
from read1 import read
def index(pk):
    group = PairingGroup('SS512')

    g_a=pk['g_a']
    g_b=pk['g_b']

    r_i_1=pk['r_i_1']
    r_i_2=pk['r_i_2']

    x = read()
    l = x.main()
    W_k=[]
    for w_l in l:
        W_0 = (g_a ** (r_i_1 + r_i_2)) * ((g_b ** (group.hash(str(w_l), ZR))) ** r_i_1)
        W_k.append(W_0)
    return W_k
def search(pk,W_k):
    group = PairingGroup('SS512')
    S=pk['S']
    h_i_2 = pk['h_i_2']  # dic

    for i in range(1, pk['n'] + 1):
        print('i', i)
        prod_pub = 1
        prod_k = 1
        dic_h_i_2 = h_i_2  # dic
        for k in S:
            h_i_1_k = pk['h_i_1']['1']
            prod_pub *= h_i_1_k

        Tr_i_1 = pk['Tr_1'] * prod_k

        # verify the eq.1
        c_i_l_1 = pk['C_agg']['1']
        c_i_l_2 = pk['C_agg']['2']
        c_i_l_3 = pk['C_agg']['3']
        h_2 = dic_h_i_2['2']
        left_1 = ((pair(prod_pub, c_i_l_3) ** pk['sk_cs']) * pair(c_i_l_2, pk['Tr_2'])) / pair(Tr_i_1, c_i_l_1)
        right_1 = pair(h_2, c_i_l_1)

        if left_1 == right_1:
            flag1= True
            print("The first layer satisfied.")
            W = pk['W_all']['1']
            W_bar = pk['W_all']['2']

            right_2 = pair(W, pk['tok_1']) * pair(pk['tok_3'], W_bar)
            o=1
            for W_0 in W_k:
                o=o+1
                left_2 = pair(W_0, pk['tok_2'])
                if left_2 == right_2:
                    flag2= True
                    # print("The keyword satisfied.")
                    break
                else:
                    flag2= False
                    # print("The keyword not satisfied.")
                    # return False
            if (flag2 == True):
                print("The second layer satisfied.")
            else:
                print("The second layer not satisfied.")

        else:
            flag1= False
            print("The first layer not satisfied.")
            # return False



    return {'flag1': flag1, 'flag2': flag2,'o':o}


def main():
    group = PairingGroup('SS512')
    tcp_server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    tcp_server_socket.bind(("111.132.6.124", 5600))
    tcp_server_socket.listen(128)
    k=1
    data=[]
    while(k<4):
        new_client_socket, client_addr = tcp_server_socket.accept()
        print(client_addr)
        if k==1:
            start_time=time.perf_counter()
            print(k)
        recv_data = new_client_socket.recv(32768).decode("utf-8")
        pk_s=json.loads(recv_data)
        data.append(pk_s)
        msg = "server receive ok"
        new_client_socket.send(msg.encode("utf-8"))
        k=k+1
    new_client_socket.close()  
    tcp_server_socket.close()  
    pk1={}
    for l in data:
        if isinstance(l,dict):
            for i in l.keys():
                if isinstance(l[i], dict):
                    pk1[i]={}
                    for j in l[i].keys():
                        x = l[i][j].encode('utf-8')
                        pk1[i][j] = group.deserialize(x)
                elif isinstance(l[i], list):
                    pk1[i]=l[i]
                elif isinstance(l[i], int):
                    pk1[i]=l[i]
                else:
                    x = l[i].encode('utf-8')
                    pk1[i] = group.deserialize(x)
    print(pk1)
    s_time = time.perf_counter()  
    W_k=index(pk1)
    e_time = time.perf_counter() 
    print('用时1：{:.5f}s'.format(e_time- s_time))

    re=search(pk1,W_k)
    print(re)
    end_time = time.perf_counter()  
    print('用时2：{:.5f}s'.format(end_time- start_time))
if __name__ == "__main__":
    main()
