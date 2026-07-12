locals {
  subnets = { for k1, v1 in var.subnets : k1 => { address_prefixes = v1.address_prefixes, default_outbound_access_enabled = v1.default_outbound_access_enabled, delegation = v1.delegation, ip_address_pool = v1.ip_address_pool, name = v1.name, private_endpoint_network_policies = v1.private_endpoint_network_policies, private_link_service_network_policies_enabled = v1.private_link_service_network_policies_enabled, resource_group_name = v1.resource_group_name, service_endpoint_policy_ids = v1.service_endpoint_policy_ids, service_endpoints = v1.service_endpoints, sharing_scope = v1.sharing_scope, virtual_network_name = v1.virtual_network_name } }

  subnet_nat_gateway_associations = merge([
    for k1, v1 in var.subnets : {
      for k2, v2 in coalesce(v1.subnet_nat_gateway_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        subnet_id = module.subnets.subnets_id["${k1}"]
      })
    }
  ]...)

  subnet_network_security_group_associations = merge([
    for k1, v1 in var.subnets : {
      for k2, v2 in coalesce(v1.subnet_network_security_group_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        subnet_id = module.subnets.subnets_id["${k1}"]
      })
    }
  ]...)

  subnet_route_table_associations = merge([
    for k1, v1 in var.subnets : {
      for k2, v2 in coalesce(v1.subnet_route_table_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        subnet_id = module.subnets.subnets_id["${k1}"]
      })
    }
  ]...)
}

module "subnets" {
  source  = "git::https://github.com/AeternaModules/azurerm_subnet.git?ref=v4.80.0"
  subnets = local.subnets
}

module "subnet_nat_gateway_associations" {
  source                          = "git::https://github.com/AeternaModules/azurerm_subnet_nat_gateway_association.git?ref=v4.80.0"
  subnet_nat_gateway_associations = local.subnet_nat_gateway_associations
  depends_on                      = [module.subnets]
}

module "subnet_network_security_group_associations" {
  source                                     = "git::https://github.com/AeternaModules/azurerm_subnet_network_security_group_association.git?ref=v4.80.0"
  subnet_network_security_group_associations = local.subnet_network_security_group_associations
  depends_on                                 = [module.subnets]
}

module "subnet_route_table_associations" {
  source                          = "git::https://github.com/AeternaModules/azurerm_subnet_route_table_association.git?ref=v4.80.0"
  subnet_route_table_associations = local.subnet_route_table_associations
  depends_on                      = [module.subnets]
}

