variable "management_agent_management_agent_install_keys" {
  description = <<EOT
Map of management_agent_management_agent_install_keys, attributes below
Required:
    - compartment_id
    - display_name
Optional:
    - allowed_key_install_count
    - is_unlimited
    - time_expires
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id            = string
    display_name              = string
    allowed_key_install_count = optional(number)
    is_unlimited              = optional(bool)
    time_expires              = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

