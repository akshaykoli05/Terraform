variable "vm_name" {
  type        = string
  description = "Name of the VM"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "vm_size" {
  type        = string
  description = "VM size"
  default     = "Standard_DS1_v2"
}

variable "network_interface_id" {
  type        = string
  description = "Network interface ID for the VM"
}

variable "keyvault_id" {
  type        = string
  description = "Key Vault ID to fetch admin credentials"
}
