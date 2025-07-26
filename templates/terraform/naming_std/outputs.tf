output "name" {
  description = "Return list of calculated standard names for deployment of resources"
  value = {
    dbw_access_connector    = lower("dbwac-${var.app}-${var.environment}-${var.location}-${var.project}")
    app_insights            = lower("appi-${var.app}-${var.environment}-${var.location}-${var.project}")
    app_service_plan        = lower("asp-${var.app}-${var.environment}-${var.location}-${var.project}")
    container_app_env       = lower("capp-${var.app}-${var.environment}-${var.location}-${var.project}")
    databricks              = lower("dbw-${var.app}-${var.environment}-${var.location}-${var.project}")
    diagnostics             = lower("dbw-${var.app}-${var.environment}-${var.location}-${var.project}")
    fab_capacity            = lower("fab-${var.app}-${var.environment}-${var.location}-${var.project}")
    data_factory            = lower("adf-${var.app}-${var.environment}-${var.location}-${var.project}")
    event_grid_topic        = lower("evgt-${var.app}-${var.environment}-${var.location}-${var.project}")
    function_app            = lower("func-${var.app}-${var.environment}-${var.location}-${var.project}")
    key_vault               = lower("kv-${var.app}-${var.environment}-${var.location}-${var.project}")
    log_analytics_workspace = lower("law-${var.app}-${var.environment}-${var.location}-${var.project}")
    network_watcher         = lower("nwa-${var.app}-${var.environment}-${var.location}-${var.project}")
    network_security_group  = lower("nsg-${var.app}-${var.environment}-${var.location}-${var.project}")
    route_table             = lower("rt-${var.app}-${var.environment}-${var.location}-${var.project}")
    managed_identity        = lower("mi-${var.app}-${var.environment}-${var.location}-${var.project}")
    public_ip               = lower("pip-${var.app}-${var.environment}-${var.location}-${var.project}")
    purview                 = lower("purv-${var.app}-${var.environment}-${var.location}-${var.project}")
    resource_group          = lower("rg-${var.app}-${var.environment}-${var.location}-${var.project}")
    vnet_resource_group     = lower("vrg-${var.app}-${var.environment}-${var.location}-${var.project}")
    sql_server              = lower("sql-${var.app}-${var.environment}-${var.location}-${var.project}")
    sql_database            = lower("sqldb-${var.app}-${var.environment}-${var.location}-${var.project}")
    storage_account         = lower("st${var.app}${var.environment}${var.location}${var.project}")
    virtual_network         = lower("vnet-${var.app}-${var.environment}-${var.location}-${var.project}")
    virtual_machine         = lower("vm${var.app}${var.environment}${var.location}")

  }
}

output "location" {
  value = var.location
}

output "project" {
  value = var.project
}

output "environment" {
  value = var.environment
}
