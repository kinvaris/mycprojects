# A simple key value store
Alrien is a simple key value store based on C

## How to compile
Go to the base directory of alrien

* `make`
* `make alrien`

## How to run
### On the server
Go to the base directory of alrien

* `sudo ./alrien <ip> <port>`
* `sudo ./alrien 192.168.0.210 14788`

### On the client
Go to the base directory of alrien and `cd` to `tests`
Edit the file `send_receive.py` to the corresponding `ip_address` & `port`, then execute as `./send_receive.py`

