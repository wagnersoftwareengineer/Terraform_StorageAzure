resource "azurerm_resource_group" "recursogpterraform" {
  name     = "azrecursostf"
  location = var.location
}

resource "azurerm_storage_account" "storage-terraform" {
  name                     = "azstoragetf"
  resource_group_name      = azurerm_resource_group.recursogpterraform.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

}

resource "azurerm_storage_container" "container-terraform" {
  name                  = "azcontainertf"
  storage_account_name  = azurerm_storage_account.storage-terraform.name
}