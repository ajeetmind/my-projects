variable "resource_group_name" {
  description = "Name of the resource group in which to create storage resources."
  type        = string
}

variable "location" {
  description = "Azure region in which to deploy the storage resources."
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account."
  type        = string
}

variable "container_name" {
  description = "Name of the blob container."
  type        = string
}
