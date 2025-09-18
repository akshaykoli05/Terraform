variable "keyvault_name" {
  type        = string
  description = "Name of the Key Vault"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "access_object_id" {
  type        = string
  description = "Object ID with access policy for Key Vault"
}

variable "admin_username" {
  type        = string
  description = "Admin username to store in Key Vault"
}

variable "admin_password" {
  type        = string
  description = "Admin password to store in Key Vault"
  sensitive   = true
}
