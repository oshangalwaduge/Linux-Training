import hashlib
import sys
import os

hash_func = "sha512"
hash_iterations = 200000

salt = os.urandom(32)

if len(sys.argv) != 2:
    print("Usage:",sys.argv[0]," <password>")  
    exit()

password = sys.argv[1].encode()

hash_value = hashlib.pbkdf2_hmac(hash_func, password, salt, hash_iterations)
print(hash_value.hex())