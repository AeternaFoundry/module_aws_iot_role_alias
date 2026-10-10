output "iot_role_aliases_id" {
  description = "Map of id values across all iot_role_aliases, keyed the same as var.iot_role_aliases"
  value       = { for k, v in aws_iot_role_alias.iot_role_aliases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_role_aliases_alias" {
  description = "Map of alias values across all iot_role_aliases, keyed the same as var.iot_role_aliases"
  value       = { for k, v in aws_iot_role_alias.iot_role_aliases : k => v.alias if v.alias != null && length(v.alias) > 0 }
}
output "iot_role_aliases_arn" {
  description = "Map of arn values across all iot_role_aliases, keyed the same as var.iot_role_aliases"
  value       = { for k, v in aws_iot_role_alias.iot_role_aliases : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "iot_role_aliases_credential_duration" {
  description = "Map of credential_duration values across all iot_role_aliases, keyed the same as var.iot_role_aliases"
  value       = { for k, v in aws_iot_role_alias.iot_role_aliases : k => v.credential_duration if v.credential_duration != null }
}
output "iot_role_aliases_region" {
  description = "Map of region values across all iot_role_aliases, keyed the same as var.iot_role_aliases"
  value       = { for k, v in aws_iot_role_alias.iot_role_aliases : k => v.region if v.region != null && length(v.region) > 0 }
}
output "iot_role_aliases_role_arn" {
  description = "Map of role_arn values across all iot_role_aliases, keyed the same as var.iot_role_aliases"
  value       = { for k, v in aws_iot_role_alias.iot_role_aliases : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "iot_role_aliases_tags" {
  description = "Map of tags values across all iot_role_aliases, keyed the same as var.iot_role_aliases"
  value       = { for k, v in aws_iot_role_alias.iot_role_aliases : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "iot_role_aliases_tags_all" {
  description = "Map of tags_all values across all iot_role_aliases, keyed the same as var.iot_role_aliases"
  value       = { for k, v in aws_iot_role_alias.iot_role_aliases : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

