# Azure Storage, App Service Plan, and Function App Terraform Configuration

This repository contains the Terraform configuration for creating an Azure Storage Account, an App Service Plan, and a Function App. Together, these resources allow you to host, execute, and manage Azure Functions in a scalable and efficient manner.

## Configuration Details

### Azure Resource Group

- **Name:** Defined by `var.resource_group_name`
- **Location:** Defined by `var.location`

### Azure Storage Account

- **Name:** Defined by `var.storage_account_name`
- **Location:** Inherits from the resource group's location.
- **Account Tier:** "Standard"
- **Replication Type:** "LRS" (Locally redundant storage)

### Azure App Service Plan

- **Name:** Defined by `var.app_service_plan_name`
- **Location:** Inherits from the resource group's location.
- **SKU Tier:** "Dynamic"
- **SKU Size:** "Y1"

### Azure Function App

- **Name:** Defined by `var.function_app_name`
- **Location:** Inherits from the resource group's location.
- **Linked App Service Plan:** Uses the created App Service Plan.
- **Linked Storage Account:** Uses the created Storage Account for necessary storage operations.

## Variables

To use this Terraform configuration, you need to define the following variables:

- `resource_group_name`
- `location`
- `storage_account_name`
- `app_service_plan_name`
- `function_app_name`

