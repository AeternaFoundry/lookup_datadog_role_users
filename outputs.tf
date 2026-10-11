output "role_users_lookup_id" {
  description = "Map of id values across all role_users_lookup, keyed the same as var.role_users_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_role_users.role_users_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "role_users_lookup_exact_match" {
  description = "Map of exact_match values across all role_users_lookup, keyed the same as var.role_users_lookup except keys with no exact_match are omitted"
  value       = { for k, v in data.datadog_role_users.role_users_lookup : k => v.exact_match if v.exact_match != null }
}
output "role_users_lookup_filter" {
  description = "Map of filter values across all role_users_lookup, keyed the same as var.role_users_lookup except keys with no filter are omitted"
  value       = { for k, v in data.datadog_role_users.role_users_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "role_users_lookup_role_id" {
  description = "Map of role_id values across all role_users_lookup, keyed the same as var.role_users_lookup except keys with no role_id are omitted"
  value       = { for k, v in data.datadog_role_users.role_users_lookup : k => v.role_id if v.role_id != null && length(v.role_id) > 0 }
}
output "role_users_lookup_role_users" {
  description = "Map of role_users values across all role_users_lookup, keyed the same as var.role_users_lookup except keys with no role_users are omitted"
  value       = { for k, v in data.datadog_role_users.role_users_lookup : k => v.role_users if v.role_users != null && length(v.role_users) > 0 }
}

