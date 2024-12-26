terraform {
  required_version = ">= 1.7.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0, < 4.0.0"
    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  skip_provider_registration = true
  storage_use_azuread        = true
}


module "azure_storage_account" {
  source = "./modules/azure_storage_account"

  name = "kinoshitalabplateng"
}

output "storage_account_name" {
  value = module.azure_storage_account.storage_account_name
}

output "resource_group_name" {
  value = module.azure_storage_account.resource_group_name
}
