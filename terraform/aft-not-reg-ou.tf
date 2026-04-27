module "aft-not-reg-ou" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ssthungo+aftnonreg@amazon.com"
    AccountName               = "aft-not-reg-ou"
    ManagedOrganizationalUnit = "AFT-ORG"
    SSOUserEmail              = "ssthungo+aftnonreg@amazon.com"
    SSOUserFirstName          = "AFT-Non-reg"
    SSOUserLastName           = "Non-reg"
  }

  account_tags = {}

  change_management_parameters = {
    change_requested_by = "AFT"
    change_reason       = "Create new acc"
  }

  custom_fields = {}

  account_customizations_name = "aft-not-reg-ou"
}
