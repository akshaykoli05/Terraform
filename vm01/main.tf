# root/main.tf

provider "azurerm" {
  features {}
}

# Resource Group declaration or you can pass an existing one explicitly as variable
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Module to create Key Vault and store admin credentials
module "keyvault" {
  source              = "https://github.com/akshaykoli05/Terraform/tree/main/keyvault"
  keyvault_name       = var.keyvault_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  access_object_id    = var.access_object_id

  admin_username = var.admin_username
  admin_password = var.admin_password
}

# Module to create the VM which uses secrets from the key vault
module "vm" {
  source              = "https://github.com/akshaykoli05/Terraform/tree/main/virtualmachine"
  vm_name             = var.vm_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  vm_size             = var.vm_size
  network_interface_id = var.network_interface_id
  keyvault_id         = module.keyvault.azurerm_key_vault_id
}
