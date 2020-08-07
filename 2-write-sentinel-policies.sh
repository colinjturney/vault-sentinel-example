#!/bin/bash

export VAULT_ADDR="http://127.0.0.1:8200"

vault login root

POLICY=$(base64 cidr-check.sentinel)

vault write sys/policies/egp/cidr-check \
        policy="${POLICY}" \
        paths="secret/*" \
        enforcement_level="hard-mandatory"

POLICY2=$(base64 business-hrs.sentinel)

vault write sys/policies/egp/business-hrs \
        policy="${POLICY2}" \
        paths="secret/*" \
        enforcement_level="soft-mandatory"

POLICY3=$(base64 restrict-kv.sentinel)

vault write sys/policies/egp/restrict-kv \
        policy="${POLICY3}" \
        paths="sys/mounts/*" \
        enforcement_level="hard-mandatory"
