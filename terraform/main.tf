module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ssthungo+aftacc@amazon.com"
    AccountName               = "sandbox-aftv2"
    ManagedOrganizationalUnit = "Sandbox-CT"
    SSOUserEmail              = "ssthungo+aftacc@amazon.com"
    SSOUserFirstName          = "Sandboxx"
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
