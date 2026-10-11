variable "role_users_lookup" {
  description = <<EOT
Map of role_users_lookup, attributes below
Required:
    - role_id
Optional:
    - exact_match
    - filter
EOT

  type = map(object({
    role_id     = string
    exact_match = optional(bool)
    filter      = optional(string)
  }))
}

