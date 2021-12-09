output "vnet_id" {
  value = azurerm_virtual_network.module-vnet.id
}

output "vnet_name" {
    value = azurerm_virtual_network.module-vnet.name
}

output "subnet_name" {
    value = [for i in azurerm_subnet.module-subnet: i.name]
}

output "subnet_ids" {
  value = [for i in azurerm_subnet.module-subnet: i.id]
}

output "subnet_map_ids" {
  value = {for i in azurerm_subnet.module-subnet: i.name => i.id }
}