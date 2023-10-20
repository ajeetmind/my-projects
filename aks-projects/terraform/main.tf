
module "resource_groups" {
  source = "./resource_groups_module"

  resource_groups = {
    "my-sql-group" = "WestEurope",
    "my-resource-group" = "WestEurope"
  }
  
  tags = {
    Environment = "prod"
  }
}


# Azure TF state storage
/*module "azure_tfstate_storage" {
 source                = "./azure_tfstate_storage"
  resource_group_name   = "tfstate-resource-group"
  location              = "West Europe"
  storage_account_name  = "mytfstateaccount"
  container_name        = "tfstatecontainer"
}*/

# Create an AKS cluster
module "aks_cluster" {
  source   = "./aks_module" # Assuming your AKS module is in a folder named aks-module
  for_each = toset(["WestEurope"]) # Define your regions

  resource_group_name  = "my-resource-group"
  cluster_name         = "aks-cluster-${each.key}"
  location             = each.key
  node_count           = 1
  enable_auto_scaling  = true
  min_count            = 1
  max_count            = 3
}

# Azure MySQL Database
module "azure_mysql" {
  source                      = "./azure_mysql_module"
  resource_group_name         = "my-sql-group"
  location                    = "WestEurope"
  mysql_server_name           = "my-unique-mysql-server12345"
  administrator_login         = "myadmin"
  administrator_login_password= "<Your-password>"
}
