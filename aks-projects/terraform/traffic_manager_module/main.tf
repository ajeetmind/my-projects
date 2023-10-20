resource "azurerm_traffic_manager_profile" "tm_profile" {
  name                = var.tm_profile_name
  resource_group_name = var.resource_group_name
  profile_status      = "Enabled"
  traffic_routing_method = "Performance"

  dns_config {
    relative_name = var.relative_dns_name
    ttl           = 30
  }

  monitor_config {
    protocol = "HTTP"
    port     = 80
    path     = "/"
  }
}

resource "azurerm_traffic_manager_endpoint" "tm_endpoint" {
  count                  = length(var.endpoint_configs)
  name                   = var.endpoint_configs[count.index]["name"]
  resource_group_name    = var.resource_group_name
  profile_name           = azurerm_traffic_manager_profile.tm_profile.name
  type                   = var.endpoint_configs[count.index]["type"]
  target_resource_id     = var.endpoint_configs[count.index]["target_resource_id"]
  target                 = var.endpoint_configs[count.index]["target"]
  endpoint_status        = "Enabled"
  endpoint_location      = var.endpoint_configs[count.index]["endpoint_location"]
  min_child_endpoints    = var.endpoint_configs[count.index]["min_child_endpoints"]
}
