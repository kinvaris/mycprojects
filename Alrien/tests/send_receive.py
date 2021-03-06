#!/usr/bin/python

import sys
import json
import struct
import socket

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server_address = (str(sys.argv[1]), int(sys.argv[2]))
sock.connect(server_address)

# max. 1000000 chars in a string

key = "foo"
value = "bar"
the_dict = { 'key': key, 'value': value }

if len(str(the_dict)) < 1000000:
    sock.send(str(len(json.dumps(the_dict))))
    sock.send(str(the_dict))
    print sock.recv(18)
else:
    print "The provided key and value override the max. amount of chars"
