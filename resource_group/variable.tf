variable "rg_name" {
    type= string
    description = "specify the name of the resource group"
    default = "rg"
}
variable "location" {
    type= string
    description = "specify the location of the resource group"
    default = "eastus"
}
variable "tags" {
    type = map(string)
    default = {}
    description = "Specify tags for the resource group"
}
