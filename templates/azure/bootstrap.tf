terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.100.0"
    }
  }
}

resource "azurerm_resource_group" "tfstate_rg" {
  name     = "rg-tfstate-bootstrap"
  location = "westeurope"
}

resource "azurerm_storage_account" "tfstate_sa" {
  name                     = "devopstriobootstrapstate"
  resource_group_name      = azurerm_resource_group.tfstate_rg.name
  location                 = azurerm_resource_group.tfstate_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
