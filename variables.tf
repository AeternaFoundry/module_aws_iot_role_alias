variable "iot_role_aliases" {
  description = <<EOT
Map of iot_role_aliases, attributes below
Required:
    - alias
    - role_arn
Optional:
    - credential_duration
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    alias               = string
    role_arn            = string
    credential_duration = optional(number)
    region              = optional(string)
    tags                = optional(map(string))
    tags_all            = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iot_role_aliases : (
        v.credential_duration == null || (v.credential_duration >= 900 && v.credential_duration <= 43200)
      )
    ])
    error_message = "must be between 900 and 43200"
  }
}

