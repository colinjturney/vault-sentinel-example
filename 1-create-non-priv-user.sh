#!/bin/bash

export VAULT_ADDR="http://127.0.0.1:8200"

vault login root

vault auth enable userpass

vault policy write colin-policy colin-policy.hcl

vault write auth/userpass/users/colin password="password" token_policies="colin-policy"
