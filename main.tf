resource "oci_management_agent_management_agent_install_key" "management_agent_management_agent_install_keys" {
  for_each = var.management_agent_management_agent_install_keys

  compartment_id            = each.value.compartment_id
  display_name              = each.value.display_name
  allowed_key_install_count = each.value.allowed_key_install_count
  is_unlimited              = each.value.is_unlimited
  time_expires              = each.value.time_expires

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

