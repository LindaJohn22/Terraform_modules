provider "azurerm" {
  features {}
}

module "rg" {
  source   = "F:/Users/PC/Desktop/CLD/GET-979_Cloud_Infra_training/Terraform/Practical5/resource_group"
  rg_name  = var.resource_group_name
  location = "eastus"
  tags = var.tags
}

module "network" {
  source              = "F:/Users/PC/Desktop/CLD/GET-979_Cloud_Infra_training/Terraform/Practical5/vnet"
  resource_group_name = module.rg.rg_name
  location            = module.rg.rg_location
  vnet_name           = "test-vnet"
  address_space       = ["10.0.0.0/16"]
  subnet_settings     = var.subnet_settings
}

module "virtual_machine" {
  source              = "F:/Users/PC/Desktop/CLD/GET-979_Cloud_Infra_training/Terraform/Practical5/virtual_machine"
  resource_group_name = module.rg.rg_name
  location            = module.rg.rg_location
  vm_settings         = var.vm_settings
  nic_settings        = var.nic_settings
  subnet_map_ids      = module.network.subnet_map_ids
}