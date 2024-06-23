resource "azurerm_resource_group" "iqsrgp" {
  name     = "iqs-rgp"
  location = "North Europe"
}

resource "azurerm_resource_group" "capesrgp" {
  name     = "capes-rgp"
  location = "North Europe"
}

resource "azurerm_resource_group" "dfsrgp" {
  name     = "dfs-rgp"
  location = "North Europe"
}