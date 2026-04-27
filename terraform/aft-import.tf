module "aft-import" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ssthungo+aftimport@amazon.com"
    AccountName               = "aft-import"
    ManagedOrganizationalUnit = "AFT-ORG"
    SSOUserEmail              = "ssthungo+aftimport@amazon.com"
    SSOUserFirstName          = "AFT-Import"
    SSOUserLastName           = "Test"
  }

  account_tags = {}

  change_management_parameters = {
    change_requested_by = "AFT"
    change_reason       = "Enroll existing AFT-Import account into AFT"
  }

  custom_fields = {}

  account_customizations_name = "aft-import"
}
