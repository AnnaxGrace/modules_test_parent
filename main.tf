terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "virtual_network" {
#   source   = "git::https://github.com/AnnaxGrace/modules_test_child.git//modules/resource_groups?ref=skeleton-setup"
  source   = "git::https://github.com/AnnaxGrace/modules_test_child.git//modules/resource_groups?ref=skeleton-setup"
  app_name = var.app_name
}
