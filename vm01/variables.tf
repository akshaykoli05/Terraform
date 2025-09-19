variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "keyvault_name" {
  type = string
}

variable "access_object_id" {
  type = string
  description = "Object ID that needs access to the key vault secrets"
}

variable "admin_username" {
  type = string
  description = "Admin username to store into Key Vault"
}

variable "admin_password" {
  type      = string
  sensitive = true
}

variable "vm_name" {
  type = string
}

variable "vm_size" {
  type    = string
  default = "Standard_DS1_v2"
}

variable "network_interface_id" {
  type = string
}
