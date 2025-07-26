
locals {
  enable_git = var.azure_devops_git_configuration.enable_git ? [0] : []
}

resource "azurerm_data_factory" "main" {
  name                            = var.name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  managed_virtual_network_enabled = true
  public_network_enabled          = true
  tags                            = var.tags
  identity {
    type = "SystemAssigned"
  }
  dynamic "vsts_configuration" {
    for_each = local.enable_git
    content {
      tenant_id       = var.azure_devops_git_configuration.tenant_id
      account_name    = var.azure_devops_git_configuration.account_name
      project_name    = var.azure_devops_git_configuration.project_name
      repository_name = var.azure_devops_git_configuration.repository_name
      root_folder     = var.azure_devops_git_configuration.root_folder
      branch_name     = var.azure_devops_git_configuration.collaboration_branch_name
    }
  }
  global_parameter {
    name  = "DataLandingZoneCode"
    type  = "String"
    value = "VinciDataPlatform"
  }
  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

resource "azurerm_monitor_metric_alert" "adf_pipeline_failures" {
  name                = "ADF Pipeline Failures"
  resource_group_name = var.resource_group_name
  scopes              = [azurerm_data_factory.main.id]
  description         = "A data factory pipeline has failed"
  severity            = 1
  frequency           = "PT1M"
  window_size         = "PT5M"
  enabled             = true
  tags                = var.tags

  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "PipelineFailedRuns"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = 0
  }

  action {
    action_group_id = var.action_group_id
  }

  depends_on = [azurerm_data_factory.main]
}

resource "azurerm_monitor_scheduled_query_rules_alert_v2" "dynamic_schema_handling_warning" {
  count               = var.deploy_dynamic_schema_alerts ? 1 : 0
  name                = "Dynamic Schema Handling Warning"
  resource_group_name = var.resource_group_name
  location            = var.location
  description         = "An alert has been triggered based on the dynamic schema handling checks defined during ingestion"
  criteria {
    operator                = "GreaterThan"
    query                   = <<-QUERY
      DynamicSchemaLogs_CL
        | project TimeGenerated, checkAgainst_s, tableName_s, columnName_s, notebook_s, processQueueId_g, processInstanceId_s,
          entityCode_s, sourceSystemCode_s, breakingChangeFlag_b, executionInterruptedFlag_b, exitStateCode_d, exitStateText_s,
          Message, Type
        | where exitStateCode_d in (2, 3)
      QUERY
    threshold               = 1
    time_aggregation_method = "Count"
  }
  evaluation_frequency = "PT5M"
  scopes               = [var.log_analytics_workspace_id]
  severity             = 2
  window_duration      = "PT5M"
  action {
    action_groups = [var.action_group_id]
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert_v2" "dynamic_schema_handling_error" {
  count               = var.deploy_dynamic_schema_alerts ? 1 : 0
  name                = "Dynamic Schema Handling Error"
  resource_group_name = var.resource_group_name
  location            = var.location
  description         = "An alert has been triggered based on the dynamic schema handling checks defined during ingestion"
  criteria {
    operator                = "GreaterThan"
    query                   = <<-QUERY
      DynamicSchemaLogs_CL
        | project TimeGenerated, checkAgainst_s, tableName_s, columnName_s, notebook_s, processQueueId_g, processInstanceId_s,
          entityCode_s, sourceSystemCode_s, breakingChangeFlag_b, executionInterruptedFlag_b, exitStateCode_d, exitStateText_s,
          Message, Type
        | where exitStateCode_d in (1, 4)
      QUERY
    threshold               = 1
    time_aggregation_method = "Count"
  }
  evaluation_frequency = "PT5M"
  scopes               = [var.log_analytics_workspace_id]
  severity             = 1
  window_duration      = "PT5M"
  action {
    action_groups = [var.action_group_id]
  }
}