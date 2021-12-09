variable "resource_group_name" {

}

variable "subnet_settings" {

}

# variable "vm_settings" {

# }

# variable "nic_settings" {

# }

# variable "sa_settings"{
    
# }

# variable "vmss_settings" {
  
# }

variable "tags" {
  
}

variable "storage_account_name"{
}
variable "storage_account_kind" {
}
variable "storage_account_tier"{
}
variable "storage_account_replication_type"{}

variable "sa_tags" {
  
}

//vmss settings
variable "sku"{}
variable "instances" {}
variable "admin_username" {}
variable "admin_password" {}
variable "storage_account_type" {}
variable "caching" {}
variable "disk_size_gb" {}
variable "nic_name" {}
variable "enable_ip_forwarding" {}
variable "nic_primary" {}
variable "ipconfig_name" {}
variable "primary_ipconfig" {}

