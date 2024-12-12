resource "azurerm_virtual_network" "vnet1" {
    name = "mk-vnet"
    resource_group_name = azurerm_resource_group.rg1.name
    location = azurerm_resource_group.rg1.location
    address_space = "[10.0.0.0/16]"
}

resource "azurerm_subnet" "sub1" {
  name                 = "mk-subnet1"
  resource_group_name  = "mk-rg"
  virtual_network_name = "mk-vnet1"
  address_prefixes     = ["10.0.1.0/24"]

}

resource "azurerm_virtual_network" "vnet2" {
  name                = "mk-vnet2"
  location            = "westus"
  resource_group_name = "mk-rg"
  address_space       = ["10.1.0.0/16"]
}

resource "azurerm_subnet" "sub2" {
  name                 = "mk-subnet2"
  resource_group_name  = "mk-rg"
  virtual_network_name = "mk-vnet2"
  address_prefixes     = ["10.1.1.0/24"]

}
