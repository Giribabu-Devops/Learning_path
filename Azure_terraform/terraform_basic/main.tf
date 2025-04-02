# Azure Provider source and version being used

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret
provider "azurerm" {
    features {}

    client_id= 0000
    client_secret= 000
    tenant_id= 00000
    subscription_id= 0000
  
}

#create resource group

resource "azurerm_resource_group" "rg" {
    name= "mygroup"
    location= "centralus"
    tags= {
        environment= "terraform test"
}
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "vnet_test" {
  name                = "example-network"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]
}