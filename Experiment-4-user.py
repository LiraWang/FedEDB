from charm.toolbox.pairinggroup import PairingGroup, ZR, G1, G2, GT, pair
from charm.toolbox.ABEnc import ABEnc
import socket
import json

def trap(pk):
    group = PairingGroup('SS512')
    x = group.random(ZR)
    s = group.random(ZR)
    l=['check', 'palu', 'morris', 'ty', 'payroll', 'rc', 'assigned', 'cn', 'jeff', 'arnold','ou', 'gco', 'enron', 'updated', 'concur', 'expense', 'xms', 'upgrade', 'july', 'corporate','management', 'solution', 'unde', 'rgo', 'version', 'integrated', 'center', 'isc', 'developed', 'transition']
    for i in pk.keys():
        y = pk[i].encode('utf-8')
        pk[i] = group.deserialize(y)
    a= pk['a']
    b = pk['b']
    b_inverse = 1 / b
    c = pk['c']
    A= (a * c * s) * b_inverse

    Tr_1 = pk['k_agg'] * (pk['v'] ** x)
    Tr_2 = pk['pk_cs'] ** x
    tok_1=[]
    for w_l in l:
        tok_ = (pk['g_a'] * (pk['g_b'] ** (group.hash(str(w_l), ZR)))) ** s
        tok_1.append(tok_)
    tok_2 = pk['g_c'] ** s
    tok_3 = pk['g']** A
    return {'Tr_1': Tr_1, 'Tr_2': Tr_2, 'tok_1': tok_1, 'tok_2': tok_2, 'tok_3': tok_3}

def main():
    tcp_server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    tcp_server_socket.bind(("111.132.6.123", 80))
    tcp_server_socket.listen(128)
    new_client_socket, client_addr = tcp_server_socket.accept()
    print(client_addr)
    recv_data = new_client_socket.recv(32768).decode("utf-8")
    pk=json.loads(recv_data)
    Trap = trap(pk)
    msg = "receive ok"
    new_client_socket.send(msg.encode("utf-8"))
    new_client_socket.close()  
    tcp_server_socket.close()  

if __name__ == "__main__":
    main()
