terraform {
  backend "azurerm" {
    resource_group_name   = "tfstate-resource-group"
    storage_account_name  = "mytfstateaccount"
    container_name        = "tfstatecontainer"
    key                   = "prod.terraform.tfstate"
  }
}
