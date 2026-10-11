variable "security_namespaces_lookup" {
  description = <<EOT
Map of security_namespaces_lookup, attributes below
Optional:
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
}

