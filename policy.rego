package terraform.rg

deny[msg] {
  resource := input.resource_changes[_]
  resource.type == "azurerm_resource_group"
  resource.change.actions[_] == "create"
  location := resource.change.after.location
  location != "eastus"
  msg := sprintf("Resource Group %v cannot be created in region %v. Only 'eastus' is allowed.", [resource.address, location])
}
