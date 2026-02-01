terraform{
    required_version = ">= 1.5.0"

    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~> 3.0"
        }
    }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location
}
resource "azurerm_storage_account" "storage" {
  name                     = local.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.environment
    project     = var.project_name
  }
}

resource "azurerm_storage_container" "container" {
  name                  = "tfcontainer"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}

