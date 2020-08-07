#!/bin/bash

vault login -method=userpass username=colin password=password

vault kv put secret/accounting/test acct_no="293472309423"

vault secrets enable -path=colin kv
