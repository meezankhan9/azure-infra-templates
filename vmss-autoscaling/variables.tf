variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "East US"
}

variable "prefix" {
  description = "Prefix used for naming all resources"
  type        = string
  default     = "vmssdemo"
}

