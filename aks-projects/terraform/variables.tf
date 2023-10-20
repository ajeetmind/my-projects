variable "resource_groups" {
  description = "A map of resource groups and their respective locations."
  type        = map(string)
  default     = {
    "my-sql-group"       = "WestEurope",
    "my-resource-group"  = "WestEurope"
  }
}

variable "tags" {
  description = "Tags to be applied to resources."
  type        = map(string)
  default     = {
    Environment = "prod"
  }
}

# AKS Cluster
variable "aks_regions" {
  description = "A list of regions for the AKS clusters."
  type        = list(string)
  default     = ["WestEurope"]
}

variable "resource_group_name" {
  description = "The name of the resource group for AKS and MySQL."
  type        = string
  default     = "my-resource-group"
}

variable "cluster_name_prefix" {
  description = "Prefix for the AKS cluster name."
  type        = string
  default     = "aks-cluster-"
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster."
  type        = number
  default     = 1
}

variable "enable_auto_scaling" {
  description = "Flag to enable auto scaling in the AKS cluster."
  type        = bool
  default     = true
}

variable "min_count" {
  description = "Minimum number of nodes for AKS auto scaling."
  type        = number
  default     = 1
}

variable "max_count" {
  description = "Maximum number of nodes for AKS auto scaling."
  type        = number
  default     = 3
}

# Azure MySQL Database
variable "mysql_server_name" {
  description = "Name of the MySQL server."
  type        = string
  default     = "my-unique-mysql-server12345"
}

variable "administrator_login" {
  description = "Administrator login for the MySQL server."
  type        = string
  default     = "myadmin"
}

variable "administrator_login_password" {
  description = "Password for the MySQL server administrator login."
  type        = string
  default     = "Complex@1234"
}
