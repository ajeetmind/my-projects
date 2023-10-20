variable "resource_groups" {
  description = "A map where the key is the resource group name and the value is its location."
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Common tags to be applied to all resource groups."
  type        = map(string)
  default     = {}
}
