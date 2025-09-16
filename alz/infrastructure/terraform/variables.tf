variable "subscription_id" {
  description = "The subscription ID to use for the AzureRM provider."
  type        = string
  default     = "1e1f62ac-0120-4c72-b6a7-87eb14060fb9"
}

variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "uksouth"
}
