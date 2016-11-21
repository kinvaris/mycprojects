#!/usr/bin/python

import socket

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server_address = ('192.168.11.137', 14790)
sock.connect(server_address)
sock.sendall("{'test':'test'}")
print sock.recv(18)
