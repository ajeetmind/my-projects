# Azure Multiple Resource Groups Terraform Configuration

This repository contains the Terraform configuration for creating multiple Azure Resource Groups. The number and properties of the Resource Groups are driven by a map variable, allowing for flexibility and scalability in deployments.

## Configuration Details

### Azure Resource Groups

- **Name:** The key from the `var.resource_groups` map.
- **Location:** The value associated with the key from the `var.resource_groups` map.
- **Tags:** Defined by `var.tags`.

## Variables

To use this Terraform configuration, you need to define the following variables:

- `resource_groups`: A map where each key-value pair represents the name and location of a Resource Group, respectively. Example:

   ```hcl
   resource_groups = {
     "ResourceGroup1" = "East US",
     "ResourceGroup2" = "West US"
   }

tags = {
  "Environment" = "Production",
  "Project"     = "MyProject"
}
