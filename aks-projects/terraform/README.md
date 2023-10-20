# Azure Resources Terraform Configuration

This repository contains the Terraform configuration for creating various Azure resources, including Resource Groups, an AKS cluster, and a MySQL Database using modular architecture.

## Configuration Details

### Azure Resource Groups

This configuration creates Azure Resource Groups as defined by the `resource_groups` map variable.

- **Source Module:** `./resource_groups_module`
- **Resource Groups:** Defined by `resource_groups` map variable.
- **Tags:** Defined by `tags` map variable, with an example value of `{ Environment = "prod" }`.

### Azure AKS Cluster

This configuration sets up an Azure Kubernetes Service (AKS) cluster.

- **Source Module:** `./aks_module`
- **Resource Group Name:** "my-resource-group"
- **Cluster Name:** "aks-cluster-{region}"
- **Location:** Defined by each key in the `toset(["WestEurope"])` list.
- **Node Count:** 1
- **Auto-Scaling:** Enabled with a minimum of 1 node and a maximum of 3 nodes.

### Azure MySQL Database

This configuration sets up an Azure MySQL Database.

- **Source Module:** `./azure_mysql_module`
- **Resource Group Name:** "my-sql-group"
- **Location:** "WestEurope"
- **MySQL Server Name:** "my-unique-mysql-server12345"
- **Administrator Login:** "myadmin"
- **Administrator Login Password:** "Complex@1234"

<!-- **Note:** The Azure TF state storage module section is commented out in the provided configuration. If you choose to use it in the future, you may need to document its specifications here. -->

## Variables

To use this Terraform configuration, adjust the module definitions according to your requirements. Most importantly:

- Set the appropriate values in the `resource_groups` map variable for the Resource Groups you wish to create.
- Adjust AKS cluster parameters if necessary.
- Adjust MySQL parameters like the server name, login, and password.

## Usage

1. Initialize the Terraform environment:

   ```bash
   terraform init

Certainly! Here's a README.md for your Terraform configuration that sets up various Azure resources:

markdown
Copy code
# Azure Resources Terraform Configuration

This repository contains the Terraform configuration for creating various Azure resources, including Resource Groups, an AKS cluster, and a MySQL Database using modular architecture.

## Configuration Details

### Azure Resource Groups

This configuration creates Azure Resource Groups as defined by the `resource_groups` map variable.

- **Source Module:** `./resource_groups_module`
- **Resource Groups:** Defined by `resource_groups` map variable.
- **Tags:** Defined by `tags` map variable, with an example value of `{ Environment = "prod" }`.

### Azure AKS Cluster

This configuration sets up an Azure Kubernetes Service (AKS) cluster.

- **Source Module:** `./aks_module`
- **Resource Group Name:** "my-resource-group"
- **Cluster Name:** "aks-cluster-{region}"
- **Location:** Defined by each key in the `toset(["WestEurope"])` list.
- **Node Count:** 1
- **Auto-Scaling:** Enabled with a minimum of 1 node and a maximum of 3 nodes.

### Azure MySQL Database

This configuration sets up an Azure MySQL Database.

- **Source Module:** `./azure_mysql_module`
- **Resource Group Name:** "my-sql-group"
- **Location:** "WestEurope"
- **MySQL Server Name:** "my-unique-mysql-server12345"
- **Administrator Login:** "myadmin"
- **Administrator Login Password:** "Complex@1234"

<!-- **Note:** The Azure TF state storage module section is commented out in the provided configuration. If you choose to use it in the future, you may need to document its specifications here. -->

## Variables

To use this Terraform configuration, adjust the module definitions according to your requirements. Most importantly:

- Set the appropriate values in the `resource_groups` map variable for the Resource Groups you wish to create.
- Adjust AKS cluster parameters if necessary.
- Adjust MySQL parameters like the server name, login, and password.

## Usage

1. Initialize the Terraform environment:

   ```bash
   terraform init

2. Plan and review the changes:

   ```bash
   terraform plan

3. Apply the changes to provision the specified Azure resources:

   ```bash
   terraform apply

4. To destroy the created resources:

   ```bash
   terraform destroy


## Terraform needs to create

Resource group creation
Storage account and storage area


## future improvements
1. Add multi region support into provider for creating resources into multiple region
2. hashicorp vault integartion for keeping sensitive information of mysql username/password , and firewall rules for accessing mysql
3. Azure container Registry
4. Azure function deployment using Terraform
