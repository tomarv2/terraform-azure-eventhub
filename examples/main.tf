terraform {
  required_version = ">= 1.0.1"
  required_providers {
    azurerm = {
      version = "~> 3.21.1"
    }
  }
}

provider "azurerm" {
  features {}
}

module "eventhub" {
  source = "../"

  eventhub_namespaces_config = {
    "varundemo1namespace1" = {
      location            = "westus2"
      resource_group_name = "<resource_group_name>"

      "hubs" = {
        "event1" = {
          partition_count = 2
          retention       = 1
        },
        "event2" = {
          partition_count = 2
          retention       = 1
        }
      }
    }
    "varundemo2namespace2" = {
      location            = "westus2"
      resource_group_name = "<resource_group_name>"

      "hubs" = {
        "event1" = {
          partition_count = 2
          retention       = 1
        },
        "event2" = {
          partition_count = 2
          retention       = 1
        }
      }
    }
  }
  # ---------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
