terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.113.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "seriousbyterraform"             
    storage_account_name = "neudanterraformstates"                                 
    container_name       = "terraform-states"                                  
    key                  = "main.terraform.tfstate"
    sas_token            = var.SAS_TOKEN
  }
}

variable "SAS_TOKEN" {
  type = string
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}