output "resource_group_names" {
  description = "Names of the created resource groups."
  value       = [for rg_name, rg_location in var.resource_groups : rg_name]
}

output "resource_group_ids" {
  description = "IDs of the created resource groups."
  value       = [for rg in azurerm_resource_group.this : rg.id]
}
