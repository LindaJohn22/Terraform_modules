# module "infra" {
#   source   = "F:/Users/PC/Desktop/CLD/GET-979_Cloud_Infra_training/Terraform/Practical5/resource_group"
#   resource_group_name = "module-rg2"
#   subnet_settings =var.subnet_settings
#   vm_settings = var.vm_settings
#   nic_settings = var.nic_settings
#   sa_settings = var.sa_settings
# }

provider "azurerm" {
  features {}
}

module "rg" {
  source   = "F:/Users/PC/Desktop/CLD/GET-979_Cloud_Infra_training/Terraform/Practical5/resource_group"
  rg_name  = var.resource_group_name
  location = "eastus"
  //tags = var.tags
}

module "network" {
  source              = "F:/Users/PC/Desktop/CLD/GET-979_Cloud_Infra_training/Terraform/Practical5/vnet"
  resource_group_name = module.rg.rg_name
  location            = module.rg.rg_location
  vnet_name           = "test-vnet"
  address_space       = ["20.0.0.0/16"]
  subnet_settings     = var.subnet_settings
}

module "storage_account" {
  source              = "F:/Users/PC/Desktop/CLD/GET-979_Cloud_Infra_training/Terraform/Practical5/storage_account"
  resource_group_name = module.rg.rg_name
  location            = module.rg.rg_location
  storage_account_name     = "teststorageaccountlj"
  storage_account_kind     = var.storage_account_kind
  storage_account_tier     = var.storage_account_tier
  storage_account_replication_type = var.storage_account_replication_type
  sa_tags                     = var.sa_tags
}

module "virtual_machine_scale_set" {
  source              = "F:/Users/PC/Desktop/CLD/GET-979_Cloud_Infra_training/Terraform/Practical5/vm_scale_set"
  resource_group_name = module.rg.rg_name
  location            = module.rg.rg_location
  vmss_name = "test-vmss"
  sku = var.sku
  instances = var.instances
  admin_username = var.admin_username
  admin_password = var.admin_password
  storage_account_type = var.storage_account_type
  caching = var.caching
  disk_size_gb = var.disk_size_gb
  nic_name = var.nic_name
  enable_ip_forwarding = var.enable_ip_forwarding
  nic_primary = var.nic_primary
  ipconfig_name = var.ipconfig_name
  primary_ipconfig = var.primary_ipconfig
  subnet_id =  module.network.subnet_ids[0]
  #subnet_map_ids      = module.network.subnet_map_ids
}