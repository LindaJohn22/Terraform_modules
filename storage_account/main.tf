resource "azurerm_storage_account" "module-sa" {
    name                     = var.storage_account_name
	location                 = var.location
	resource_group_name      = var.resource_group_name
    account_kind             = var.storage_account_kind
    account_tier             = var.storage_account_tier
    account_replication_type = var.storage_account_replication_type
    tags                     = var.sa_tags
    
  
}