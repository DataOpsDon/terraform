module "naming" {
  source   = "../../../templates/utils"
  location = var.location
  project  = "edp"
  lz       = "h1s01"
  suffix   = "amba"
  lz_short = "connect"
}

// AMBA patten module
module "amba_alz" {
  source                     = "Azure/avm-ptn-monitoring-amba-alz/azurerm"
  version                    = "0.1.1"
  location                   = var.location
  root_management_group_name = local.root_management_group_name
  resource_group_name        = module.naming.name.resource_group
  user_assigned_managed_identity_name = module.naming.name.managed_identity
}

// ALZ pattern module which deploys ALZ architecture and also integrates AMBA policies
module "avm-ptn-alz" {
  source                 = "Azure/avm-ptn-alz/azurerm"
  version                = "0.12.2"
  parent_resource_id     = data.azurerm_client_config.main.tenant_id
  location               = var.location
  architecture_name      = "alz"
  subscription_placement = local.subscription_placement
  policy_default_values = {
    private_dns_zone_subscription_id     = jsonencode({ value = "${var.connectivity_subscription_id}" })
    private_dns_zone_region              = jsonencode({ value = "${var.location}" })
    private_dns_zone_resource_group_name = jsonencode({ value = "${var.private_dns_zone_resource_group_name}" })
    amba_alz_management_subscription_id  = jsonencode({ value = "${var.subscription_id}" })
    amba_alz_resource_group_name         = jsonencode({ value = "${module.naming.name.resource_group}" })
    amba_alz_user_assigned_managed_identity_name   = jsonencode({ value = "${module.naming.name.managed_identity}" })
    amba_alz_resource_group_location               = jsonencode({ value = "${var.location}" })
    amba_alz_action_group_email                  = jsonencode({ value = ["jonathan.daloia@telefonicatech.uk"] })
    log_analytics_workspace_id = jsonencode({value = "${var.logging}"})
  }
}


resource "azurerm_role_assignment" "main" {
  scope                = "/providers/Microsoft.Management/managementGroups/MG-Capita-EDP"
  role_definition_name = "Reader"
  principal_id         = "65dc8ded-7a72-4300-a583-9c28bfef3462"
}

resource "azurerm_role_assignment" "this" {
  scope                = "/providers/Microsoft.Management/managementGroups/MG-Capita-EDP"
  role_definition_name = "contributor"
  principal_id         = "65dc8ded-7a72-4300-a583-9c28bfef3462"
}

// assign reader to mahdi on tenant
resource "azurerm_role_assignment" "mahdi" {
  scope                = "/providers/Microsoft.Management/managementGroups/MG-Capita-EDP"
  role_definition_name = "Reader"
  principal_id         = "7084747d-660f-41bb-9e53-afa55b8c6500"
}

//assign contributor to mahdi
resource "azurerm_role_assignment" "mahdic" {
  scope                = "/providers/Microsoft.Management/managementGroups/MG-Capita-EDP"
  role_definition_name = "contributor"
  principal_id         = "7084747d-660f-41bb-9e53-afa55b8c6500"
}

//assign contributor to group in data platform dev sub
resource "azurerm_role_assignment" "group" {
  scope                = "/subscriptions/1706f813-5311-4294-91a9-8b803f5eb2b0"
  role_definition_name = "contributor"
  principal_id         = "3e1b87a1-6b6d-4db8-a79d-c9f1086f38b0"
}

//assign contributor to group in data platform test sub
resource "azurerm_role_assignment" "groupt" {
  scope                = "/subscriptions/56eb47d4-de25-4cbf-aefa-35edabdc1471"
  role_definition_name = "contributor"
  principal_id         = "3e1b87a1-6b6d-4db8-a79d-c9f1086f38b0"
}

//assign contributor to group in data platform uat sub
resource "azurerm_role_assignment" "groupu" {
  scope                = "/subscriptions/33649cfe-df91-4dc0-8f82-2bb4a7f30919"
  role_definition_name = "contributor"
  principal_id         = "3e1b87a1-6b6d-4db8-a79d-c9f1086f38b0"
}
