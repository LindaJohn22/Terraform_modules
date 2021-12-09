resource "azurerm_virtual_network" "module-vnet" {
    name = var.vnet_name
	location = var.location
	resource_group_name = var.resource_group_name
	address_space       = var.address_space
	bgp_community = var.bgp_community
	dns_servers = var.dns_servers
	tags = var.tags
	flow_timeout_in_minutes  = var.flow_timeout_in_minutes 	
}

resource "azurerm_subnet" "module-subnet" {
    for_each = var.subnet_settings
    name = each.value["subnet_name"]
	resource_group_name = var.resource_group_name
	virtual_network_name = azurerm_virtual_network.module-vnet.name
	address_prefixes     = each.value["address_prefixes"]
	enforce_private_link_endpoint_network_policies = lookup(each.value, "enforce_private_link_endpoint_network_policies", false)
  	enforce_private_link_service_network_policies = lookup(each.value, "enforce_private_link_service_network_policies", false)
  	service_endpoints = lookup(each.value,"service_endpoints", [])
}


