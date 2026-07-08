# --- azurerm_subnet ---
output "subnets" {
  description = "All subnet resources"
  value       = module.subnets.subnets
}
output "subnets_address_prefixes" {
  description = "List of address_prefixes values across all subnets"
  value       = [for k, v in module.subnets.subnets : v.address_prefixes]
}
output "subnets_default_outbound_access_enabled" {
  description = "List of default_outbound_access_enabled values across all subnets"
  value       = [for k, v in module.subnets.subnets : v.default_outbound_access_enabled]
}
output "subnets_delegation" {
  description = "List of delegation values across all subnets"
  value       = [for k, v in module.subnets.subnets : v.delegation]
}
output "subnets_ip_address_pool" {
  description = "List of ip_address_pool values across all subnets"
  value       = [for k, v in module.subnets.subnets : v.ip_address_pool]
}
output "subnets_name" {
  description = "List of name values across all subnets"
  value       = [for k, v in module.subnets.subnets : v.name]
}
output "subnets_private_endpoint_network_policies" {
  description = "List of private_endpoint_network_policies values across all subnets"
  value       = [for k, v in module.subnets.subnets : v.private_endpoint_network_policies]
}
output "subnets_private_link_service_network_policies_enabled" {
  description = "List of private_link_service_network_policies_enabled values across all subnets"
  value       = [for k, v in module.subnets.subnets : v.private_link_service_network_policies_enabled]
}
output "subnets_resource_group_name" {
  description = "List of resource_group_name values across all subnets"
  value       = [for k, v in module.subnets.subnets : v.resource_group_name]
}
output "subnets_service_endpoint_policy_ids" {
  description = "List of service_endpoint_policy_ids values across all subnets"
  value       = [for k, v in module.subnets.subnets : v.service_endpoint_policy_ids]
}
output "subnets_service_endpoints" {
  description = "List of service_endpoints values across all subnets"
  value       = [for k, v in module.subnets.subnets : v.service_endpoints]
}
output "subnets_sharing_scope" {
  description = "List of sharing_scope values across all subnets"
  value       = [for k, v in module.subnets.subnets : v.sharing_scope]
}
output "subnets_virtual_network_name" {
  description = "List of virtual_network_name values across all subnets"
  value       = [for k, v in module.subnets.subnets : v.virtual_network_name]
}


# --- azurerm_subnet_nat_gateway_association ---
output "subnet_nat_gateway_associations" {
  description = "All subnet_nat_gateway_association resources"
  value       = module.subnet_nat_gateway_associations.subnet_nat_gateway_associations
}
output "subnet_nat_gateway_associations_nat_gateway_id" {
  description = "List of nat_gateway_id values across all subnet_nat_gateway_associations"
  value       = [for k, v in module.subnet_nat_gateway_associations.subnet_nat_gateway_associations : v.nat_gateway_id]
}
output "subnet_nat_gateway_associations_subnet_id" {
  description = "List of subnet_id values across all subnet_nat_gateway_associations"
  value       = [for k, v in module.subnet_nat_gateway_associations.subnet_nat_gateway_associations : v.subnet_id]
}


# --- azurerm_subnet_network_security_group_association ---
output "subnet_network_security_group_associations" {
  description = "All subnet_network_security_group_association resources"
  value       = module.subnet_network_security_group_associations.subnet_network_security_group_associations
}
output "subnet_network_security_group_associations_network_security_group_id" {
  description = "List of network_security_group_id values across all subnet_network_security_group_associations"
  value       = [for k, v in module.subnet_network_security_group_associations.subnet_network_security_group_associations : v.network_security_group_id]
}
output "subnet_network_security_group_associations_subnet_id" {
  description = "List of subnet_id values across all subnet_network_security_group_associations"
  value       = [for k, v in module.subnet_network_security_group_associations.subnet_network_security_group_associations : v.subnet_id]
}


# --- azurerm_subnet_route_table_association ---
output "subnet_route_table_associations" {
  description = "All subnet_route_table_association resources"
  value       = module.subnet_route_table_associations.subnet_route_table_associations
}
output "subnet_route_table_associations_route_table_id" {
  description = "List of route_table_id values across all subnet_route_table_associations"
  value       = [for k, v in module.subnet_route_table_associations.subnet_route_table_associations : v.route_table_id]
}
output "subnet_route_table_associations_subnet_id" {
  description = "List of subnet_id values across all subnet_route_table_associations"
  value       = [for k, v in module.subnet_route_table_associations.subnet_route_table_associations : v.subnet_id]
}



