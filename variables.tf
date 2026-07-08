variable "subnets" {
  description = <<EOT
Map of subnets, attributes below
Required:
    - name
    - resource_group_name
    - virtual_network_name
Optional:
    - address_prefixes
    - default_outbound_access_enabled
    - private_endpoint_network_policies
    - private_link_service_network_policies_enabled
    - service_endpoint_policy_ids
    - service_endpoints
    - sharing_scope
    - delegation (block)
    - ip_address_pool (block)
Nested subnet_nat_gateway_associations (azurerm_subnet_nat_gateway_association):
    Required:
        - nat_gateway_id
Nested subnet_network_security_group_associations (azurerm_subnet_network_security_group_association):
    Required:
        - network_security_group_id
Nested subnet_route_table_associations (azurerm_subnet_route_table_association):
    Required:
        - route_table_id
EOT

  type = map(object({
    name                                          = string
    resource_group_name                           = string
    virtual_network_name                          = string
    address_prefixes                              = optional(list(string))
    default_outbound_access_enabled               = optional(bool)   # Default: true
    private_endpoint_network_policies             = optional(string) # Default: "Disabled"
    private_link_service_network_policies_enabled = optional(bool)   # Default: true
    service_endpoint_policy_ids                   = optional(set(string))
    service_endpoints                             = optional(set(string))
    sharing_scope                                 = optional(string)
    delegation = optional(object({
      name = string
      service_delegation = object({
        actions = optional(set(string))
        name    = string
      })
    }))
    ip_address_pool = optional(object({
      id                     = string
      number_of_ip_addresses = string
    }))
    subnet_nat_gateway_associations = optional(map(object({
      nat_gateway_id = string
    })))
    subnet_network_security_group_associations = optional(map(object({
      network_security_group_id = string
    })))
    subnet_route_table_associations = optional(map(object({
      route_table_id = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.subnets) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.subnets : [for kk in keys(coalesce(v0.subnet_nat_gateway_associations, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.subnets : [for kk in keys(coalesce(v0.subnet_network_security_group_associations, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.subnets : [for kk in keys(coalesce(v0.subnet_route_table_associations, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
