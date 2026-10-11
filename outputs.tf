output "fleet_apps_management_fleet_credentials_id" {
  description = "Map of id values across all fleet_apps_management_fleet_credentials, keyed the same as var.fleet_apps_management_fleet_credentials except keys with no id are omitted"
  value       = { for k, v in oci_fleet_apps_management_fleet_credential.fleet_apps_management_fleet_credentials : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_apps_management_fleet_credentials_compartment_id" {
  description = "Map of compartment_id values across all fleet_apps_management_fleet_credentials, keyed the same as var.fleet_apps_management_fleet_credentials except keys with no compartment_id are omitted"
  value       = { for k, v in oci_fleet_apps_management_fleet_credential.fleet_apps_management_fleet_credentials : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "fleet_apps_management_fleet_credentials_display_name" {
  description = "Map of display_name values across all fleet_apps_management_fleet_credentials, keyed the same as var.fleet_apps_management_fleet_credentials except keys with no display_name are omitted"
  value       = { for k, v in oci_fleet_apps_management_fleet_credential.fleet_apps_management_fleet_credentials : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "fleet_apps_management_fleet_credentials_entity_specifics" {
  description = "Map of entity_specifics values across all fleet_apps_management_fleet_credentials, keyed the same as var.fleet_apps_management_fleet_credentials except keys with no entity_specifics are omitted"
  value       = { for k, v in oci_fleet_apps_management_fleet_credential.fleet_apps_management_fleet_credentials : k => one(v.entity_specifics) if v.entity_specifics != null && length(v.entity_specifics) > 0 }
}
output "fleet_apps_management_fleet_credentials_fleet_id" {
  description = "Map of fleet_id values across all fleet_apps_management_fleet_credentials, keyed the same as var.fleet_apps_management_fleet_credentials except keys with no fleet_id are omitted"
  value       = { for k, v in oci_fleet_apps_management_fleet_credential.fleet_apps_management_fleet_credentials : k => v.fleet_id if v.fleet_id != null && length(v.fleet_id) > 0 }
}
output "fleet_apps_management_fleet_credentials_lifecycle_details" {
  description = "Map of lifecycle_details values across all fleet_apps_management_fleet_credentials, keyed the same as var.fleet_apps_management_fleet_credentials except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_fleet_apps_management_fleet_credential.fleet_apps_management_fleet_credentials : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "fleet_apps_management_fleet_credentials_password" {
  description = "Map of password values across all fleet_apps_management_fleet_credentials, keyed the same as var.fleet_apps_management_fleet_credentials except keys with no password are omitted"
  value       = { for k, v in oci_fleet_apps_management_fleet_credential.fleet_apps_management_fleet_credentials : k => one(v.password) if v.password != null && length(v.password) > 0 }
}
output "fleet_apps_management_fleet_credentials_state" {
  description = "Map of state values across all fleet_apps_management_fleet_credentials, keyed the same as var.fleet_apps_management_fleet_credentials except keys with no state are omitted"
  value       = { for k, v in oci_fleet_apps_management_fleet_credential.fleet_apps_management_fleet_credentials : k => v.state if v.state != null && length(v.state) > 0 }
}
output "fleet_apps_management_fleet_credentials_system_tags" {
  description = "Map of system_tags values across all fleet_apps_management_fleet_credentials, keyed the same as var.fleet_apps_management_fleet_credentials except keys with no system_tags are omitted"
  value       = { for k, v in oci_fleet_apps_management_fleet_credential.fleet_apps_management_fleet_credentials : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "fleet_apps_management_fleet_credentials_time_created" {
  description = "Map of time_created values across all fleet_apps_management_fleet_credentials, keyed the same as var.fleet_apps_management_fleet_credentials except keys with no time_created are omitted"
  value       = { for k, v in oci_fleet_apps_management_fleet_credential.fleet_apps_management_fleet_credentials : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "fleet_apps_management_fleet_credentials_time_updated" {
  description = "Map of time_updated values across all fleet_apps_management_fleet_credentials, keyed the same as var.fleet_apps_management_fleet_credentials except keys with no time_updated are omitted"
  value       = { for k, v in oci_fleet_apps_management_fleet_credential.fleet_apps_management_fleet_credentials : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "fleet_apps_management_fleet_credentials_user" {
  description = "Map of user values across all fleet_apps_management_fleet_credentials, keyed the same as var.fleet_apps_management_fleet_credentials except keys with no user are omitted"
  value       = { for k, v in oci_fleet_apps_management_fleet_credential.fleet_apps_management_fleet_credentials : k => one(v.user) if v.user != null && length(v.user) > 0 }
}

