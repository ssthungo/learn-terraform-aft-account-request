module "sandbox-4" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ssthungo+4@amazon.com"
    AccountName               = "sandbox-3"
    ManagedOrganizationalUnit = "SST"
    SSOUserEmail              = "ssthungo+4@amazon.com"
    SSOUserFirstName          = "Sandbox4"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Test" = "PP"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS CTAccount Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
