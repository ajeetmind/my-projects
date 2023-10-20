// Output the function app name
output "function_app_name" {
  description = "The name of the Azure Function App."
  value       = azurerm_function_app.function.name
}

// Output the function app default hostname (URL)
output "function_app_default_hostname" {
  description = "The default hostname associated with the Azure Function App."
  value       = azurerm_function_app.function.default_hostname
}

// Output the function app primary access key
output "function_app_primary_access_key" {
  description = "The primary access key for the Azure Function App."
  value       = azurerm_function_app.function.app_settings["FUNCTIONS_EXTENSION_VERSION"]
  sensitive   = true
}

// If you have a storage account associated with the function, you might want to output its connection string
output "associated_storage_account_connection_string" {
  description = "Connection string of the storage account associated with the Azure Function App."
  value       = azurerm_storage_account.storage.primary_connection_string
  sensitive   = true
}

