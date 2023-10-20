terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.58"  # Use the appropriate version that suits your needs
    }
  }
}

provider "azurerm" {
  features {}  # Needed for azurerm provider >= 2.x
  
  # Optionally you can specify a specific Azure region
  # location = "East US"  # This is just an example; by default, it'll use the region from the Azure CLI or from the ARM_LOCATION environment variable
}
