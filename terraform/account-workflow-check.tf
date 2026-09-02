module "account-workflow" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ssthungo+aft+wrkflow@amazon.com"
    AccountName               = "aft-account-wf"
    ManagedOrganizationalUnit = "SST"
    SSOUserEmail              = "ssthungo+wrkflow@amazon.com"
    SSOUserFirstName          = "aft-account-wf"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
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
