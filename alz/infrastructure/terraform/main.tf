module "avm-ptn-alz" {
  source                 = "Azure/avm-ptn-alz/azurerm"
  version                = "0.12.2"
  parent_resource_id     = data.azurerm_client_config.main.tenant_id
  location               = var.location
  architecture_name      = "alz"
  policy_assignments_to_modify = {
    alz = {
      policy_assignments = {
        Deploy-MDFC-Config-H224 = {
          parameters = {
            enableAscForAI = jsonencode({ value = "Disabled" })
          }
        }
      }
    }
  }
}

