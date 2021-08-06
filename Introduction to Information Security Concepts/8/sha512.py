import hashlib
import sys
import os

salt = os.urandom(32).hex()

if len(sys.argv) != 2:
    print("Usage:",sys.argv[0]," <password>")  
    exit()

password = sys.argv[1]
password = salt + password

hash_value = hashlib.sha512(password.encode('utf-8'))
print(hash_value.hexdigest())