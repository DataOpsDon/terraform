plugin "terraform" {
  enabled = true
  preset  = "all" # "recommended" 
}
rule "terraform_required_providers"        { enabled = false }
rule "terraform_standard_module_structure" { enabled = false }
rule "terraform_documented_variables"      { enabled = false }
rule "terraform_documented_outputs"        { enabled = false }
rule "terraform_typed_variables"           { enabled = false }
rule "terraform_unused_declarations"       { enabled = false }
###
plugin "azurerm" {
    enabled = true
    version = "0.27.0"
    source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
}
