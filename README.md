# Vault Sentinel Example
A working example of several Vault Sentinel rules applied to a Vault server

## Requirements

- Vault Enterprise binary installed in your PATH
- A working Vault license (written to vault-license.txt) if you want it to run more than 30 mins

## What the demo shows

The demo shows how Sentinel can control the following aspects of Vault usage:
- The hours within which Vault can be accessed
- The CIDR range within which Vault is being accessed from
- The Secrets engines within which Vault are being enabled on Vault

## How to run the demo

Run the scripts in numerical order. To kill Vault at any time, just run `./99-kill-vault`

# TODO
- Improve this README and code comments.
