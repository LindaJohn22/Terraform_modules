resource "azurerm_windows_virtual_machine_scale_set" "module-vmss" {
    name                = var.vmss_name
    location = var.location
    resource_group_name = var.resource_group_name
    sku                 = var.sku
    instances           = var.instances
    admin_password      = var.admin_password
    admin_username      = var.admin_username

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter-Server-Core"
    version   = "latest"
  }

  os_disk {
    storage_account_type = var.storage_account_type
    caching              = var.caching
    disk_size_gb = var.disk_size_gb

  }

  network_interface {
    name    = var.nic_name
    enable_ip_forwarding = var.enable_ip_forwarding
    primary = var.nic_primary

    ip_configuration {
      name      = var.ipconfig_name
      primary   = var.primary_ipconfig
      subnet_id = var.subnet_id
    }
  }
}