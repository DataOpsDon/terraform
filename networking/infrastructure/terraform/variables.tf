variable "subscription_id" {
  description = "The ID of the Azure subscription where resources will be created."
  type        = string
}

variable "environment" {
  description = "The environment for which the resources are being created (e.g., dev, prod)."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
}