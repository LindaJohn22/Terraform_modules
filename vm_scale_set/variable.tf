variable vmss_name{
    type = string
}
variable location{
    type = string
}
variable resource_group_name{
    type = string
}
variable sku{
    type = string
}
variable instances{
    type = number
}
variable admin_username{
    type = string
}
variable admin_password{
    type = string
}
variable storage_account_type{
    type = string
}
variable caching{
    type = string
}
variable disk_size_gb{
    type = string
}
variable nic_name{
    type = string
}

variable enable_ip_forwarding{
    type = bool
}
variable nic_primary{
    type = bool
}
variable ipconfig_name{
    type = string
}
variable primary_ipconfig{
    type = bool
}
variable subnet_id{
    type = any
}
