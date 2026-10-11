output "security_namespaces_lookup_id" {
  description = "Map of id values across all security_namespaces_lookup, keyed the same as var.security_namespaces_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_security_namespaces.security_namespaces_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_namespaces_lookup_namespaces" {
  description = "Map of namespaces values across all security_namespaces_lookup, keyed the same as var.security_namespaces_lookup except keys with no namespaces are omitted"
  value       = { for k, v in data.azuredevops_security_namespaces.security_namespaces_lookup : k => v.namespaces if v.namespaces != null && length(v.namespaces) > 0 }
}

