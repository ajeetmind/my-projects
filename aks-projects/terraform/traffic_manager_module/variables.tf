variable "resource_group_name" {
  description = "The name of the resource group in which to create the Traffic Manager resources."
  type        = string
}

variable "tm_profile_name" {
  description = "The name of the Traffic Manager profile."
  type        = string
}

variable "relative_dns_name" {
  description = "The relative DNS name provided will be concatenated with Azure's DNS zone."
  type        = string
}

variable "endpoint_configs" {
  description = "List of maps containing endpoint configurations."
  type = list(object({
    name                = string
    type                = string
    target_resource_id  = string
    target              = string
    endpoint_location   = string
    min_child_endpoints = number
  }))
}
