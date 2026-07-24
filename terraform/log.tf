module "aft-log-acc" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ssthungo+log@amazon.com"
    AccountName               = "Log Archive"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail              = "ssthungo+log@amazon.com"
    SSOUserFirstName          = "Log"
    SSOUserLastName           = "Archive"
  }

  account_tags = {}

  change_management_parameters = {
    change_requested_by = "AFT"
    change_reason       = "Enroll existing AFT-Import account into AFT"
  }

  custom_fields = {
    custom_a=custom_1
  }

  account_customizations_name = ""
}
