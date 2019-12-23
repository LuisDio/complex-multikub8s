#!/bin/bash

# Access Token
export VAULT_TOKEN=$(grep 'Initial Root Token:' keys.txt | awk '{print substr($NF, 1,length($NF)-1)}')
# Loggin
vault auth -address=${VAULT_ADDR} ${VAULT_TOKEN}
