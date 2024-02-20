terraform {
  required_version = ">= 1.7.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.9.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.azurerm_resource_group_name
  location = var.azurerm_resource_group_location
}

resource "azurerm_storage_account" "storage_account" {
  name                            = var.azurerm_storage_account_name
  resource_group_name             = azurerm_resource_group.resource_group.name
  location                        = azurerm_resource_group.resource_group.location
  account_tier                    = var.azurerm_storage_account_tier
  account_replication_type        = var.azurerm_storage_account_replication_type
  allow_nested_items_to_be_public = false
}

resource "azurerm_storage_container" "storage_container" {
  name                  = var.azurerm_storage_container_name
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}