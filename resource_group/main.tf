resource "azurerm_resource_group" "module-rg" {
  name = var.rg_name
  location = var.location
  tags = var.tags
}






