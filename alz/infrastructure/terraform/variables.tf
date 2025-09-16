variable "subscription_id" {
  description = "The subscription ID to use for the AzureRM provider."
  type        = string
  default     = "70c067e2-0144-4f49-81c9-7d14913c61b1"
}

variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "uksouth"
}

variable "connectivity_subscription_id" {
  description = "The subscription ID for the connectivity resources."
  type        = string
}

variable "private_dns_zone_resource_group_name" {
  description = "The resource group name for the private DNS zones."
  type        = string
}

variable "logging" {
  description = "The name of the log analytics workspace used for diagnostic policies"
  type = string
}