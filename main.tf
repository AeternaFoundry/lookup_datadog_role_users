data "datadog_role_users" "role_users_lookup" {
  for_each = var.role_users_lookup

  role_id     = each.value.role_id
  exact_match = each.value.exact_match
  filter      = each.value.filter
}

