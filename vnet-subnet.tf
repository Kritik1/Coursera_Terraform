resource "azurerm_virtual_network" "myTerraformNetwork" {
           name = var.vnetname
           address_space = ["10.0.0.0/16"]
           location = var.location
           resource_group_name = azurerm_resource_group.myFirstTerraformGroup.name
           tags = var.tags

}

resource "azurerm_subnet" "myTerraformSubnet" {
           name = var.subnetname
           resource_group_name = azurerm_resource_group.myFirstTerraformGroup.name
           virtual_network_name = azurerm_virtual_network.myTerraformNetwork.name
            address_prefixes     = ["10.0.1.0/24"]

}
