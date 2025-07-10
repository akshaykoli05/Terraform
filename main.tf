provider "azurerm" {
  features {}
}

variable "resource_group_location" {
  type    = string
  default = "eastus"
  description = "Location of the resource group"
}

resource "azurerm_resource_group" "example" {
  name     = "demo-rg"
  location = var.resource_group_location
}
