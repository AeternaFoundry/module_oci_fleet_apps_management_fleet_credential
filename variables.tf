variable "fleet_apps_management_fleet_credentials" {
  description = <<EOT
Map of fleet_apps_management_fleet_credentials, attributes below
Required:
    - compartment_id
    - display_name
    - fleet_id
    - entity_specifics (block):
        - credential_level (required)
        - resource_id (optional)
        - target (optional)
        - variables (optional, block):
            - name (optional)
            - value (optional)
    - password (block):
        - credential_type (required)
        - key_id (optional)
        - key_version (optional)
        - secret_id (optional)
        - secret_version (optional)
        - value (optional)
        - vault_id (optional)
    - user (block):
        - credential_type (required)
        - key_id (optional)
        - key_version (optional)
        - secret_id (optional)
        - secret_version (optional)
        - value (optional)
        - vault_id (optional)
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    display_name   = string
    fleet_id       = string
    entity_specifics = object({
      credential_level = string
      resource_id      = optional(string)
      target           = optional(string)
      variables = optional(list(object({
        name  = optional(string)
        value = optional(string)
      })))
    })
    password = object({
      credential_type = string
      key_id          = optional(string)
      key_version     = optional(string)
      secret_id       = optional(string)
      secret_version  = optional(string)
      value           = optional(string)
      vault_id        = optional(string)
    })
    user = object({
      credential_type = string
      key_id          = optional(string)
      key_version     = optional(string)
      secret_id       = optional(string)
      secret_version  = optional(string)
      value           = optional(string)
      vault_id        = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_fleet_credentials : (
        contains([for v in ["FLEET", "RESOURCE", "TARGET"] : lower(v)], lower(v.entity_specifics.credential_level))
      )
    ])
    error_message = "must be one of: \"FLEET\", \"RESOURCE\", \"TARGET\""
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_fleet_credentials : (
        contains([for v in ["KEY_ENCRYPTION", "PLAIN_TEXT", "VAULT_SECRET"] : lower(v)], lower(v.password.credential_type))
      )
    ])
    error_message = "must be one of: \"KEY_ENCRYPTION\", \"PLAIN_TEXT\", \"VAULT_SECRET\""
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_fleet_credentials : (
        contains([for v in ["KEY_ENCRYPTION", "PLAIN_TEXT", "VAULT_SECRET"] : lower(v)], lower(v.user.credential_type))
      )
    ])
    error_message = "must be one of: \"KEY_ENCRYPTION\", \"PLAIN_TEXT\", \"VAULT_SECRET\""
  }
}

