
variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "cluster_name" {
  description = "The name of the AKS cluster."
  type        = string
}

variable "location" {
  description = "The Azure region."
  type        = string
}

variable "node_count" {
  description = "Initial node count."
  type        = number
}

variable "enable_auto_scaling" {
  description = "Enable AKS node pool autoscaling."
  type        = bool
  default     = false
}

variable "min_count" {
  description = "Minimum node count for autoscaling."
  type        = number
  default     = 1
}

variable "max_count" {
  description = "Maximum node count for autoscaling."
  type        = number
  default     = 5
}