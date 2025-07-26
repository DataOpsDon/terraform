variable "name" {
  type = string
}
variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}
variable "deploy_secure_networking" {
  type        = bool
  description = "Whether or not to deploy the function app with secure networking enabled."
}

variable "tags" {
  type        = map(string)
  description = "The tags to be applied to the function app."

}