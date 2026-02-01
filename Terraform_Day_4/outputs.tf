output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_ids" {
  value = {
    for key, subnet in azurerm_subnet.subnet :
    key => subnet.id
  }
}
