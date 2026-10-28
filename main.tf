terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source               = "app.terraform.io/mateacademyolenanosenko/resource_group_storage/azurerm"
  version              = "1.0.0"
  resource_group_name  = "terraform-task6-rg"
  storage_account_name = "tftask6storageaccount"
  location             = "Poland Central"
}