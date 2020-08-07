// # Manage namespaces
// path "sys/namespaces/*" {
//    capabilities = ["create", "read", "update", "delete", "list", "sudo"]
// }
//
// # Manage policies
// path "sys/policies/acl/*" {
//    capabilities = ["create", "read", "update", "delete", "list", "sudo"]
// }
//
// # List policies
// path "sys/policies/acl" {
//   capabilities = ["list"]
// }
//
# Enable and manage secrets engines
path "sys/mounts/*" {
   capabilities = ["create", "read", "update", "delete", "list"]
}

# List available secrets engines
path "sys/mounts" {
  capabilities = [ "read" ]
}

# Manage tokens
path "auth/token/*" {
  capabilities = [ "create", "read", "update", "delete", "sudo" ]
}

# Request access to secrets at 'secret'
path "secret/*" {
   capabilities = ["create","read","update","delete"]
}
