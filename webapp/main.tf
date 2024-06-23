resource "azurerm_resource_group" "iqsrgp" {
  name     = "iqs-rgp"
  location = "North Europe"
}

resource "azurerm_resource_group" "capesrgp" {
  name     = "capes-rgp"
  location = "North Europe"
}
resource "azurerm_resource_group" "unrgp" {
  name     = "unisure-rgp"
  location = "North Europe"
}


