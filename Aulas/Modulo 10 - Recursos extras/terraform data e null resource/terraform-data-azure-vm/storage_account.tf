resource "azurerm_storage_account" "storage_account" {
  name                     = "rafasantostesteb"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = local.common_tags
}
