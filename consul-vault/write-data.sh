#!/bin/bash

vault write -address=${VAULT_ADDR} \
  secret/app-1/db-password value=mysecretpassword
