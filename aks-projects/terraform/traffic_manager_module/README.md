# Azure Traffic Manager Profile and Endpoints Terraform Configuration

This repository contains the Terraform configuration for creating an Azure Traffic Manager Profile and its associated endpoints. Traffic Manager allows users to control the distribution of user traffic to specified endpoints.

## Configuration Details

### Azure Traffic Manager Profile

- **Name:** Defined by `var.tm_profile_name`
- **Resource Group:** Defined by `var.resource_group_name`
- **Status:** "Enabled"
- **Routing Method:** "Performance"

#### DNS Configuration
- **Relative Name:** Defined by `var.relative_dns_name`
- **TTL (Time To Live):** 30 seconds

#### Monitor Configuration
- **Protocol:** "HTTP"
- **Port:** 80
- **Path:** "/"

### Azure Traffic Manager Endpoints

Endpoint details are driven by the `var.endpoint_configs` list of maps. Each map within the list should contain the necessary details for an endpoint:

- `name`
- `type`
- `target_resource_id`
- `target`
- `endpoint_location`
- `min_child_endpoints`

## Variables

To use this Terraform configuration, you need to define the following variables:

- `tm_profile_name`
- `resource_group_name`
- `relative_dns_name`
- `endpoint_configs`: A list of maps, with each map representing an endpoint's configuration. Example:

   ```hcl
   endpoint_configs = [
     {
       name               = "Endpoint1",
       type               = "Microsoft.Network/trafficManagerProfiles/externalEndpoints",
       target_resource_id = "/subscriptions/...",
       target             = "myendpoint1.azurewebsites.net",
       endpoint_location  = "East US",
       min_child_endpoints = 1
     },
     ...
   ]
