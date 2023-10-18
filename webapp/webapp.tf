resource "azurerm_windows_web_app" "iqswebapp" {
  name                = "iqswebapp"
  resource_group_name = azurerm_resource_group.iqsrgp.name
  location            = azurerm_resource_group.iqsrgp.location
  service_plan_id     = azurerm_service_plan.iqsappplan.id
  depends_on          = [azurerm_service_plan.iqsappplan]
  site_config {
    always_on      = false
    application_stack {
      current_stack  = "dotnet"
      dotnet_version = "v6.0"
      
    }
  }
}

resource "azurerm_service_plan" "iqsappplan" {
  name                = "iqsappplanchenna"
  resource_group_name = azurerm_resource_group.iqsrgp.name
  location            = azurerm_resource_group.iqsrgp.location
  sku_name            = "F1"
  os_type             = "Windows"
  depends_on          = [azurerm_resource_group.iqsrgp]
}

resource "azurerm_app_service_source_control" "gitsource" {
  app_id   = azurerm_windows_web_app.iqswebapp.id
  repo_url = "https://github.com/chenna0501/iqswebapp"
  branch   = "master"
  use_manual_integration = true
}