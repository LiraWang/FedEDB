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
    n=pk['n']
    r=pk['r']
    x = read()
    l = x.main()
    W_k={}
    for i in range(1,pk['n']+1):
         r_i_1=r[str(i)]['1'] #
         r_i_2=r[str(i)]['1'] #
         W_k[i]=[]
         for w_l in l:
             W_0 = (g_a ** (r_i_1 + r_i_2)) * ((g_b ** (group.hash(str(w_l), ZR))) ** r_i_1)
             W_k[i].append(W_0)
    return W_k
def search(pk,W_k):
    group = PairingGroup('SS512')
    h_i_2 = pk['h_i_2']  # dic
    flag1 = {}
    flag2 = {}
    n=pk['n']
    for i in range(1, n+ 1):
        print('i', i)
        prod_pub = 1
        prod_k = 1
        dic_h_i_2 = h_i_2[str(i)]  #
        for k in pk['S']:

            h_i_1_k = pk['h_i_1'][str(i)][str(n + 1-k)] #
            prod_pub *= h_i_1_k
            if k != i:
                h_i_2_k = dic_h_i_2[str(n+ 1 - k + i)]#
                prod_k *= h_i_2_k

        Tr_i_1 = pk['Tr_1'] * prod_k

        # verify the eq.1
        c_i_l_1 = pk['C_agg'][str(i)]['1'] #
        c_i_l_2=pk['C_agg'][str(i)]['2'] #
        c_i_l_3=pk['C_agg'][str(i)]['3'] #
        n=pk['n']
        h_2 = dic_h_i_2[str(n+1)] #
        left_1 = ((pair(prod_pub, c_i_l_3) ** pk['sk_cs']) * pair(c_i_l_2, pk['Tr_2'])) / pair(Tr_i_1, c_i_l_1)
        right_1 = pair(h_2, c_i_l_1)

        if left_1 == right_1:
            flag1[i] = True
            print("The first layer satisfied.")

            W = pk['W_all'][str(i)]['1'] #
            W_bar=pk['W_all'][str(i)]['2'] #
            right_2 = pair(W, pk['tok_1']) * pair(pk['tok_3'], W_bar)
            for W_ in W_k.values():
                for W_0 in W_:
                    left_2 = pair(W_0, pk['tok_2'])
                    if left_2 == right_2:
                        flag2[i] = True
                        # print("The keyword satisfied.")
                        break
                    else:
                        flag2[i] = False
                        # print("The keyword not satisfied.")
                        # return False
            if (flag2[i] == True):
                print("The second layer satisfied.")
            else:
                print("The second layer not satisfied.")
        else:
            flag1[i] = False
            print("The first layer not satisfied.")
            # return False
    return {'flag1': flag1, 'flag2': flag2}


def main():
    group = PairingGroup('SS512')
    tcp_server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    # 设置当服务器先close 即服务器端4次挥手之后资源能够立即释放，这样就保证了，下次运行程序时 可以立即绑定7890端口 (如果服务端先close,再启动服务端就不会报端口被占用的错误。)
    tcp_server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

    # 2. 绑定本机ip和端口号  bind
    tcp_server_socket.bind(("111.132.6.124", 5600))
    tcp_server_socket.listen(128)
    k=1
    data=[]
    while(k<4):
        new_client_socket, client_addr = tcp_server_socket.accept()
        print(client_addr)
        if k == 1:
            start_time = time.perf_counter()  # 返回系统运行时间
            print('ok')
        recv_data = new_client_socket.recv(32768).decode("utf-8")
        pk_s=json.loads(recv_data)
        data.append(pk_s)
        # 写数据给客户端
        msg = "server receive ok"
        new_client_socket.send(msg.encode("utf-8"))
        k=k+1
    # 关闭套接字
    new_client_socket.close()  # 与客户端通信的套接字
    tcp_server_socket.close()  # 服务器套接字
    pk1={}
    for l in data:
        if isinstance(l,dict):
            for i in l.keys():
                if isinstance(l[i], dict):
                    pk1[i]={}
                    for j in l[i].keys():
                        if isinstance(l[i][j],dict):
                            pk1[i][j]={}
                            for k in l[i][j].keys():
                                x = l[i][j][k].encode('utf-8')
                                pk1[i][j][k] = group.deserialize(x)
                elif isinstance(l[i], list):
                    pk1[i]=l[i]
                elif isinstance(l[i], int):
                    pk1[i]=l[i]
                else:
                    x = l[i].encode('utf-8')
                    pk1[i] = group.deserialize(x)
    print(pk1)
    s_time = time.perf_counter()  # 返回系统运行时间
    W_k=index(pk1)
    e_time = time.perf_counter()  # 返回系统运行时间
    print('用时1：{:.5f}s'.format(e_time- s_time))

    re=search(pk1,W_k)
    print(re)
    end_time = time.perf_counter()  # 返回系统运行时间
    print('用时2：{:.5f}s'.format(end_time- start_time))
if __name__ == "__main__":
    main()