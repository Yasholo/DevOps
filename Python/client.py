import socket

clientsocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
#clientsocket.connect(("127.0.0.1",12345))

clientsocket.connect(('localhost', 8089))

clientsocket.send(bytes('hello everyone!','UTF-8'))
