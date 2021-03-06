module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "karkohli+aft1@amazon.com"
    AccountName               = "aft-1"
    ManagedOrganizationalUnit = "AFT-Child"
    SSOUserEmail              = "karkohli@amazon.com"
    SSOUserFirstName          = "AWS Control Tower"
    SSOUserLastName           = "Admin"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}


module "ctactive" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "karkohli+6@amazon.com"
    AccountName               = "ctactive"
    ManagedOrganizationalUnit = "Enroll_test"
    SSOUserEmail              = "karkohli@amazon.com"
    SSOUserFirstName          = "AWS Control Tower"
    SSOUserLastName           = "Admin"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod-2"
  }

  account_customizations_name = "ctactive"
}
