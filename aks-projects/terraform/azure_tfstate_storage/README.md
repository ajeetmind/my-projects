# Azure Storage Account and Container Terraform Configuration

This repository contains the Terraform configuration for creating an Azure Storage Account and an associated Storage Container. This allows for scalable and secure storage solutions on the Azure platform.

## Configuration Details

### Azure Resource Group

- **Name:** Defined by `var.resource_group_name`
- **Location:** Defined by `var.location`

### Azure Storage Account

- **Name:** Defined by `var.storage_account_name`
- **Location:** Inherits from the resource group's location.
- **Account Tier:** "Standard"
- **Replication Type:** "GRS" (Geo-redundant storage)

### Azure Storage Container

- **Name:** Defined by `var.container_name`
- **Access Type:** "private" (The contents of the container are not available for public access by default)

## Variables

To use this Terraform configuration, you need to define the following variables:

- `resource_group_name`
- `location`
- `storage_account_name`
- `container_name`
