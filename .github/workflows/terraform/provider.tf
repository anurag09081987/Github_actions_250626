terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.78.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "pipelinetest1"
    storage_account_name = "pipelinetest1"
    container_name = "pipelinecontainer"
    key = "action2.terraform.tfstate"
  }
}