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
  }
}

variable "CLIENT_ID" {
  type = string
  description = "Client ID del usuario terraform"
}

provider "azurerm" {
  client_id = var.CLIENT_ID
  skip_provider_registration = true
  features {}
}