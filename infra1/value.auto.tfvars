resource_group_name = "test-rg1"
tags = {
    env = "training"
}
subnet_settings = {
  subnet1 = {
    subnet_name      = "jump-subnet"
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet2 = {
    subnet_name      = "web-subnet"
    address_prefixes = ["10.0.2.0/24"]
  }
  subnet3 = {
    subnet_name      = "app-subnet"
    address_prefixes = ["10.0.3.0/24"]
  }
  subnet4 = {
    subnet_name      = "db-subnet"
    address_prefixes = ["10.0.4.0/24"]
  }
}

nic_settings = {
  nic1 = {
    nic_name = "jump-nic"
    ip_config = [{
      ip_config_name = "ipconfig1"
      subnet_name    = "jump-subnet"
      ip_name        = null
    }]
  }
  nic2 = {
    nic_name = "web-nic"
    ip_config = [{
      ip_config_name = "ipconfig1"
      subnet_name    = "web-subnet"
      ip_name        = null
    }]
  }
  nic3 = {
    nic_name = "app-nic"
    ip_config = [{
      ip_config_name = "ipconfig1"
      subnet_name    = "app-subnet"
      ip_name        = null
    }]
  }
}

vm_settings = {
  vm1 = {
    vm_name        = "jump-vm1"
    nic_key        = "nic1"
    vm_size        = "Standard_DS2_v2"
    admin_username = "azureadmin"
    admin_password = "Password@1234"
    os_disk = [{
      caching              = "None"
      storage_account_type = "Premium_LRS"
    }]
  }
}