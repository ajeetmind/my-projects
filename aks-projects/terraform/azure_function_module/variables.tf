variable "resource_group_name" {
  description = "Name of the resource group in which to create the Function App and associated resources."
  type        = string
}

variable "location" {
  description = "Azure region in which to deploy the Function App and associated resources."
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account for the Function App."
  type        = string
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan for the Function App."
  type        = string
}

variable "function_app_name" {
  description = "Name of the Function App."
  type        = string
}
