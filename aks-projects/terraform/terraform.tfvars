resource_groups = {
  "my-sql-group"       = "WestEurope",
  "my-resource-group"  = "WestEurope"
}

tags = {
  Environment = "prod"
}

aks_regions = ["WestEurope"]
resource_group_name     = "my-resource-group"
cluster_name_prefix     = "aks-cluster-"
node_count              = 1
enable_auto_scaling     = true
min_count               = 1
max_count               = 3

mysql_server_name           = "my-unique-mysql-server12345"
administrator_login         = "myadmin"
administrator_login_password= "Complex@1234"
