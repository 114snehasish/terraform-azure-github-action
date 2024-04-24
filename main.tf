# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.99.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "Learning"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id = var.azure_subscription_id
  client_id       = var.spn_client_id
  client_secret   = var.spn_client_secret
  tenant_id       = var.azure_tenant_id
}

# Create a resource group
resource "azurerm_resource_group" "terraform-azure-github-action" {
  name     = "terraform-azure-github-action-rg"
  location = "East US"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "listen_ten_dot_vnet" {
  name                = "test_10_0_0_0_16_vnet"
  resource_group_name = azurerm_resource_group.terraform-azure-github-action.name
  location            = azurerm_resource_group.terraform-azure-github-action.location
  address_space       = ["10.0.0.0/16"]
}