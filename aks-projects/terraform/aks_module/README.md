# Azure Kubernetes Service (AKS) Terraform Configuration

This repository contains the Terraform configuration for creating an Azure Kubernetes Service (AKS) cluster. This configuration sets up an AKS cluster with specified node pools, identity type, and associated tags.

## Configuration Details

- **Name:** Defined by `var.cluster_name`
- **Location:** Defined by `var.location`
- **Resource Group:** Defined by `var.resource_group_name`
- **DNS Prefix:** Defined by `var.cluster_name`

### Default Node Pool

- **Name:** "default"
- **Node Count:** Defined by `var.node_count`
- **Auto-Scaling:** Defined by `var.enable_auto_scaling` 
  - **Min Count:** Defined by `var.min_count`
  - **Max Count:** Defined by `var.max_count`
- **VM Size:** "Standard_DS2_v2" (modifiable as needed)

### Identity

- **Type:** "SystemAssigned"

### Tags

- **Environment:** "Production"

## Variables

To use this Terraform configuration, you need to define the following variables:

- `cluster_name`: Name of the AKS cluster.
- `location`: Azure location for the AKS cluster.
- `resource_group_name`: Name of the Azure resource group.
- `node_count`: Number of nodes in the default node pool.
- `enable_auto_scaling`: Boolean to indicate if auto-scaling should be enabled.
- `min_count`: Minimum number of nodes (used if auto-scaling is enabled).
- `max_count`: Maximum number of nodes (used if auto-scaling is enabled).
