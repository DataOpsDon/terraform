variable "name" {
  type = string
}

variable "location" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "action_group_id" {
  type = string
}

variable "azure_devops_git_configuration" {
  type = object({
    enable_git                = bool
    tenant_id                 = string
    account_name              = string
    project_name              = string
    repository_name           = string
    root_folder               = string
    collaboration_branch_name = string
  })
}

variable "log_analytics_workspace_id" {
  type = string
}

variable "deploy_dynamic_schema_alerts" {
  type    = bool
  default = false
}

variable "tags" {
  type = map(string)
}