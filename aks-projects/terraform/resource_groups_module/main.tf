resource "azurerm_resource_group" "this" {
  for_each = var.resource_groups

  name     = each.key
  location = each.value
  tags     = var.tags
}
