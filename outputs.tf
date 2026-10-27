output "security_namespaces_lookup_id" {
  description = "Map of id values across all security_namespaces_lookup, keyed the same as var.security_namespaces_lookup"
  value       = { for k, v in data.azuredevops_security_namespaces.security_namespaces_lookup : k => v.id }
}
output "security_namespaces_lookup_namespaces" {
  description = "Map of namespaces values across all security_namespaces_lookup, keyed the same as var.security_namespaces_lookup"
  value       = { for k, v in data.azuredevops_security_namespaces.security_namespaces_lookup : k => v.namespaces }
}

