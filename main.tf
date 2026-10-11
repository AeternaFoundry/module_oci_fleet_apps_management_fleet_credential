resource "oci_fleet_apps_management_fleet_credential" "fleet_apps_management_fleet_credentials" {
  for_each = var.fleet_apps_management_fleet_credentials

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  fleet_id       = each.value.fleet_id

  entity_specifics {
    credential_level = each.value.entity_specifics.credential_level
    resource_id      = each.value.entity_specifics.resource_id
    target           = each.value.entity_specifics.target
    dynamic "variables" {
      for_each = each.value.entity_specifics.variables != null ? each.value.entity_specifics.variables : []
      content {
        name  = variables.value.name
        value = variables.value.value
      }
    }
  }

  password {
    credential_type = each.value.password.credential_type
    key_id          = each.value.password.key_id
    key_version     = each.value.password.key_version
    secret_id       = each.value.password.secret_id
    secret_version  = each.value.password.secret_version
    value           = each.value.password.value
    vault_id        = each.value.password.vault_id
  }

  user {
    credential_type = each.value.user.credential_type
    key_id          = each.value.user.key_id
    key_version     = each.value.user.key_version
    secret_id       = each.value.user.secret_id
    secret_version  = each.value.user.secret_version
    value           = each.value.user.value
    vault_id        = each.value.user.vault_id
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

