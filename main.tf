provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "volvoRG" {
    name = "volvoRG"
    location = "East US"
}

resource "azurerm_virtual_network" "volvovnet" {
    name = "volvovnet"
    location = azurerm_resource_group.volvoRG.location
    resource_group_name = azurerm_resource_group.volvoRG.name
    address_space = var.network_address_space
    depends_on = [ azurerm_resource_group.volvoRG ]
}