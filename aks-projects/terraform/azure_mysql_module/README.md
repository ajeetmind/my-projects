# Azure MySQL Server and Database Terraform Configuration

This repository contains the Terraform configuration for creating an Azure MySQL Server and a MySQL database named "ghost". The resources are set up with specified configurations including SKU, storage settings, administrative settings, and SSL settings.

## Configuration Details

### Azure Resource Group

- **Name:** Defined by `var.resource_group_name`
- **Location:** Defined by `var.location`

### Azure MySQL Server

- **Name:** Defined by `var.mysql_server_name`
- **Location:** Inherits from the resource group's location.
- **SKU Name:** Defined by `var.sku_name`
- **Storage (in MB):** Defined by `var.storage_mb`
- **Backup Retention (in days):** Defined by `var.backup_retention_days`
- **Geo Redundant Backup:** Defined by `var.geo_redundant_backup_enabled`
- **Administrator Login:** Defined by `var.administrator_login`
- **Administrator Password:** Defined by `var.administrator_login_password`
- **SSL Enforcement:** Defined by `var.ssl_enforcement_enabled`
- **Minimum SSL/TLS Version Enforced:** Defined by `var.ssl_minimal_tls_version`
- **MySQL Version:** Defined by `var.mysql_version`

### Azure MySQL Database

- **Name:** "ghost"
- **Charset:** "utf8"
- **Collation:** "utf8_unicode_ci"

## Variables

To use this Terraform configuration, you need to define the following variables:

- `resource_group_name`
- `location`
- `mysql_server_name`
- `sku_name`
- `storage_mb`
- `backup_retention_days`
- `geo_redundant_backup_enabled`
- `administrator_login`
- `administrator_login_password`
- `ssl_enforcement_enabled`
- `ssl_minimal_tls_version`
- `mysql_version`

