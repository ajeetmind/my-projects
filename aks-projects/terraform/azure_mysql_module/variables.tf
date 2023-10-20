variable "resource_group_name" {
  description = "Name of the resource group in which to create the MySQL server and associated resources."
  type        = string
}

variable "location" {
  description = "Azure region in which to deploy the MySQL server and associated resources."
  type        = string
}

variable "mysql_server_name" {
  description = "Name of the MySQL server."
  type        = string
}

variable "sku_name" {
  description = "SKU Name for the MySQL server."
  default     = "B_Gen5_2"
}

variable "storage_mb" {
  description = "Max storage allowed for the MySQL server. In MB."
  default     = 5120
}

variable "backup_retention_days" {
  description = "Backup retention days for the MySQL server."
  default     = 7
}

variable "geo_redundant_backup_enabled" {
  description = "Enable geo-redundant backup?"
  default     = false
}

variable "administrator_login" {
  description = "The Administrator Login for the MySQL Server."
  type        = string
}

variable "administrator_login_password" {
  description = "The Password associated with the `administrator_login` for the MySQL Server."
  type        = string
  sensitive   = true
}

variable "ssl_enforcement_enabled" {
  description = "Specifies if SSL should be enforced on connections."
  default     = true
}

variable "ssl_minimal_tls_version" {
  description = "The minimum TLS version to support on the sever."
  default     = "TLS1_2"
}

variable "mysql_version" {
  description = "The version of MySQL to use."
  default     = "5.7"
}
