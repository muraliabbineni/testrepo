
resource "azurerm_virtual_network_peering" "peer-1" {
  name                      = "mk-vnet1_to_mk-vnet2"
  resource_group_name       = "mk-rg"
  virtual_network_name      = "mk-vnet1"
  remote_virtual_network_id = azurerm_virtual_network.vnet2.id
}

resource "azurerm_virtual_network_peering" "peer-2" {
  name                      = "mk-vnet2_to_mk-vnet1"
  resource_group_name       = "mk-rg"
  virtual_network_name      = "mk-vnet2"
  remote_virtual_network_id = azurerm_virtual_network.vnet1.id
}