locals {
  subscription_placement = {
    connectivity = {
      subscription_id       = "767dc19e-6e66-4dd6-acf9-66743ca4e400"
      management_group_name = "MG-Connectivity"
    }
    security = {
      subscription_id       = "7aa42372-d80a-4627-be71-d4230e4ec0ce"
      management_group_name = "MG-Management"
    }
    datadev = {
      subscription_id       = "1706f813-5311-4294-91a9-8b803f5eb2b0"
      management_group_name = "MG-Corp"
    }
    dataTest = {
      subscription_id       = "56eb47d4-de25-4cbf-aefa-35edabdc1471"
      management_group_name = "MG-Corp"
    }
    dataUAT = {
      subscription_id       = "33649cfe-df91-4dc0-8f82-2bb4a7f30919"
      management_group_name = "MG-Corp"
    }
    dataProd = {
      subscription_id       = "6ee3571b-6b98-4946-b184-00b1854705d2"
      management_group_name = "MG-Corp"
    }
  }
  root_management_group_name = keys(module.avm-ptn-alz.management_group_resource_ids)[2] // for AMBA
}