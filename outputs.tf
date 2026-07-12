# --- azurerm_subnet ---
output "subnets_id" {
  description = "Map of id values across all subnets, keyed the same as var.subnets"
  value       = module.subnets.subnets_id
}

output "subnets_address_prefixes" {
  description = "Map of address_prefixes values across all subnets, keyed the same as var.subnets"
  value       = module.subnets.subnets_address_prefixes
}

output "subnets_default_outbound_access_enabled" {
  description = "Map of default_outbound_access_enabled values across all subnets, keyed the same as var.subnets"
  value       = module.subnets.subnets_default_outbound_access_enabled
}

output "subnets_delegation" {
  description = "Map of delegation values across all subnets, keyed the same as var.subnets"
  value       = module.subnets.subnets_delegation
}

output "subnets_ip_address_pool" {
  description = "Map of ip_address_pool values across all subnets, keyed the same as var.subnets"
  value       = module.subnets.subnets_ip_address_pool
}

output "subnets_name" {
  description = "Map of name values across all subnets, keyed the same as var.subnets"
  value       = module.subnets.subnets_name
}

output "subnets_private_endpoint_network_policies" {
  description = "Map of private_endpoint_network_policies values across all subnets, keyed the same as var.subnets"
  value       = module.subnets.subnets_private_endpoint_network_policies
}

output "subnets_private_link_service_network_policies_enabled" {
  description = "Map of private_link_service_network_policies_enabled values across all subnets, keyed the same as var.subnets"
  value       = module.subnets.subnets_private_link_service_network_policies_enabled
}

output "subnets_resource_group_name" {
  description = "Map of resource_group_name values across all subnets, keyed the same as var.subnets"
  value       = module.subnets.subnets_resource_group_name
}

output "subnets_service_endpoint_policy_ids" {
  description = "Map of service_endpoint_policy_ids values across all subnets, keyed the same as var.subnets"
  value       = module.subnets.subnets_service_endpoint_policy_ids
}

output "subnets_service_endpoints" {
  description = "Map of service_endpoints values across all subnets, keyed the same as var.subnets"
  value       = module.subnets.subnets_service_endpoints
}

output "subnets_sharing_scope" {
  description = "Map of sharing_scope values across all subnets, keyed the same as var.subnets"
  value       = module.subnets.subnets_sharing_scope
}

output "subnets_virtual_network_name" {
  description = "Map of virtual_network_name values across all subnets, keyed the same as var.subnets"
  value       = module.subnets.subnets_virtual_network_name
}

# --- azurerm_subnet_nat_gateway_association ---
output "subnet_nat_gateway_associations_id" {
  description = "Map of id values across all subnet_nat_gateway_associations, keyed the same as var.subnet_nat_gateway_associations"
  value       = module.subnet_nat_gateway_associations.subnet_nat_gateway_associations_id
}

output "subnet_nat_gateway_associations_nat_gateway_id" {
  description = "Map of nat_gateway_id values across all subnet_nat_gateway_associations, keyed the same as var.subnet_nat_gateway_associations"
  value       = module.subnet_nat_gateway_associations.subnet_nat_gateway_associations_nat_gateway_id
}

output "subnet_nat_gateway_associations_subnet_id" {
  description = "Map of subnet_id values across all subnet_nat_gateway_associations, keyed the same as var.subnet_nat_gateway_associations"
  value       = module.subnet_nat_gateway_associations.subnet_nat_gateway_associations_subnet_id
}

# --- azurerm_subnet_network_security_group_association ---
output "subnet_network_security_group_associations_id" {
  description = "Map of id values across all subnet_network_security_group_associations, keyed the same as var.subnet_network_security_group_associations"
  value       = module.subnet_network_security_group_associations.subnet_network_security_group_associations_id
}

output "subnet_network_security_group_associations_network_security_group_id" {
  description = "Map of network_security_group_id values across all subnet_network_security_group_associations, keyed the same as var.subnet_network_security_group_associations"
  value       = module.subnet_network_security_group_associations.subnet_network_security_group_associations_network_security_group_id
}

output "subnet_network_security_group_associations_subnet_id" {
  description = "Map of subnet_id values across all subnet_network_security_group_associations, keyed the same as var.subnet_network_security_group_associations"
  value       = module.subnet_network_security_group_associations.subnet_network_security_group_associations_subnet_id
}

# --- azurerm_subnet_route_table_association ---
output "subnet_route_table_associations_id" {
  description = "Map of id values across all subnet_route_table_associations, keyed the same as var.subnet_route_table_associations"
  value       = module.subnet_route_table_associations.subnet_route_table_associations_id
}

output "subnet_route_table_associations_route_table_id" {
  description = "Map of route_table_id values across all subnet_route_table_associations, keyed the same as var.subnet_route_table_associations"
  value       = module.subnet_route_table_associations.subnet_route_table_associations_route_table_id
}

output "subnet_route_table_associations_subnet_id" {
  description = "Map of subnet_id values across all subnet_route_table_associations, keyed the same as var.subnet_route_table_associations"
  value       = module.subnet_route_table_associations.subnet_route_table_associations_subnet_id
}


