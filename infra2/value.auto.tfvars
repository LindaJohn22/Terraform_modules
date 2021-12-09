resource_group_name = "test-rg2"
tags = {
    env = "training"
}
subnet_settings = {
  subnet1 = {
    subnet_name      = "jump-subnet"
    address_prefixes = ["20.0.1.0/24"]
  }
  subnet2 = {
    subnet_name      = "web-subnet"
    address_prefixes = ["20.0.2.0/24"]
  }
  subnet3 = {
    subnet_name      = "app-subnet"
    address_prefixes = ["20.0.3.0/24"]
  }
  subnet4 = {
    subnet_name      = "db-subnet"
    address_prefixes = ["20.0.4.0/24"]
  }
}

//storage account settings
storage_account_name = "teststorageaccount"
storage_account_kind = "StorageV2"
storage_account_tier = "Standard"
storage_account_replication_type = "LRS"
sa_tags = {
    created_by = "lj"
}

//vmss settings
sku = "Standard_F2"
instances = 1
admin_username = "azureadmin"
admin_password = "Password@1234"
storage_account_type = "Standard_LRS"
caching = "ReadOnly"
disk_size_gb = null
nic_name = "jump-nic"
enable_ip_forwarding = false
nic_primary = true
ipconfig_name = "ipconfig1"
primary_ipconfig = true

# nic_settings = {
#   nic1 = {
#     nic_name = "jump-nic"
#     ip_config = [{
#       ip_config_name = "ipconfig1"
#       subnet_name    = "jump-subnet"
#       ip_name        = null
#     }]
#   }
#   nic2 = {
#     nic_name = "web-nic"
#     ip_config = [{
#       ip_config_name = "ipconfig1"
#       subnet_name    = "web-subnet"
#       ip_name        = null
#     }]
#   }
#   nic3 = {
#     nic_name = "app-nic"
#     ip_config = [{
#       ip_config_name = "ipconfig1"
#       subnet_name    = "app-subnet"
#       ip_name        = null
#     }]
#   }
# }

# vm_settings = {
#   vm1 = {
#     vm_name        = "jump-vm1"
#     nic_key        = "nic1"
#     vm_size        = "StandardDs2_v2"
#     admin_username = "azureadmin"
#     admin_password = "Password@1234"
#     os_disk = [{
#       caching              = "None"
#       storage_account_type = "Premium_LRS"
#     }]
#   }
# }