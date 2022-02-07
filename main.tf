provider "azurerm" {

   version = "~>2.0"

     subscription_id="fb3b3466-bdaa-4a05-82b1-ce2e0b2e9f92"
     tenant_id="2f057f67-dc55-447a-96c5-dd55eaefde2b"
     client_id="55385184-efe9-4093-80f6-ca35cda235be"
  features {
  }
}

            # KEY(fixed-hash)      #name

#  Create an resource group
resource "azurerm_resource_group" "RS1" {

    name = var.rgname    
        location = var.location
  
}
# Create an Vnet
# CTRL KU, CTRL KC
resource "azurerm_virtual_network" "VN1" {

  name                = var.vnet1
  location            = azurerm_resource_group.RS1.location
  resource_group_name = azurerm_resource_group.RS1.name
  address_space       = var.vnetaddrespace1
  subnet {
    name           = var.testsubnet
    address_prefix = var.subnetaddress1
  }
  
}


