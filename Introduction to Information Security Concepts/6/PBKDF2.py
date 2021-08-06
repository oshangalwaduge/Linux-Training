import hashlib
import sys

hash_func = "sha512"
salt = "Km5d5ivMy8iexuHcZrsD"
hash_iterations = 200000

if len(sys.argv) != 2:
    print("Usage:",sys.argv[0]," <password>")  
    exit()

password = sys.argv[1]

hash_value = hashlib.pbkdf2_hmac(hash_func, password.encode(), salt.encode(), hash_iterations)
print(hash_value.hex())