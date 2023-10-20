output "resource_group_name" {
  description = "The name of the resource group in which MySQL server is deployed."
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  description = "The location of the resource group in which MySQL server is deployed."
  value       = azurerm_resource_group.rg.location
}

output "mysql_server_name" {
  description = "The name of the deployed MySQL server."
  value       = azurerm_mysql_server.mysql_server.name
}

output "mysql_server_fqdn" {
  description = "The fully qualified domain name of the MySQL server."
  value       = azurerm_mysql_server.mysql_server.fqdn
}

output "mysql_server_version" {
  description = "The version of the deployed MySQL server."
  value       = azurerm_mysql_server.mysql_server.version
}

output "mysql_connection_string" {
  description = "A basic connection string for the Azure MySQL Database."
  value       = "Server=${azurerm_mysql_server.mysql_server.fqdn};Database=${var.administrator_login};User Id=${var.administrator_login};Password=${var.administrator_login_password};SslMode=Preferred;"
  sensitive   = true
}

output "mysql_database_name" {
  description = "The name of the MySQL database created."
  value       = azurerm_mysql_database.ghost_db.name
}
