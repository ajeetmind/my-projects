// Output the cluster name
output "aks_cluster_name" {
  description = "The name of the AKS cluster."
  value       = azurerm_kubernetes_cluster.aks.name
}

// Output the AKS kube_config
output "aks_kube_config" {
  description = "The kube config content for cluster management."
  value       = azurerm_kubernetes_cluster.aks.kube_config.0.client_certificate
  sensitive   = true
}

// Output the node resource group (useful for certain network or resource management tasks)
output "aks_node_resource_group" {
  description = "The name of the node resource group created by the AKS cluster."
  value       = azurerm_kubernetes_cluster.aks.node_resource_group
}

