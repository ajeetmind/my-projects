// Output the Traffic Manager profile name
output "traffic_manager_profile_name" {
  description = "The name of the Azure Traffic Manager profile."
  value       = azurerm_traffic_manager_profile.tm.name
}

// Output the Traffic Manager profile DNS name
output "traffic_manager_dns_name" {
  description = "The DNS name of the Azure Traffic Manager profile."
  value       = azurerm_traffic_manager_profile.tm.dns_name
}

// Output the Traffic Manager profile status
output "traffic_manager_profile_status" {
  description = "The status of the Azure Traffic Manager profile."
  value       = azurerm_traffic_manager_profile.tm.profile_status
}

// Output the Traffic Manager profile traffic routing method
output "traffic_manager_routing_method" {
  description = "The traffic routing method of the Azure Traffic Manager profile."
  value       = azurerm_traffic_manager_profile.tm.traffic_routing_method
}

// If you have endpoints associated with the Traffic Manager, you might want to output their details
// Here's an example for one endpoint. You can replicate this for multiple endpoints or loop through a list of endpoints.
output "traffic_manager_endpoint_name" {
  description = "The name of the Azure Traffic Manager profile endpoint."
  value       = azurerm_traffic_manager_endpoint.endpoint.name
  depends_on  = [azurerm_traffic_manager_endpoint.endpoint]
}

