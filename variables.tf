variable "azurerm_resource_group_name" {
  type     = string
  nullable = false
}

variable "azurerm_resource_group_location" {
  type     = string
  nullable = false
}

variable "azurerm_storage_account_name" {
  type     = string
  nullable = false
}

variable "azurerm_storage_account_tier" {
  type    = string
  default = "Standard"
}

variable "azurerm_storage_account_replication_type" {
  type    = string
  default = "LRS"
}

variable "azurerm_storage_container_name" {
  type     = string
  nullable = false
}