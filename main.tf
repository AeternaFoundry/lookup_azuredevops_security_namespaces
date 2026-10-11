data "azuredevops_security_namespaces" "security_namespaces_lookup" {
  for_each = var.security_namespaces_lookup


  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

