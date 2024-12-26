# Criar o grupo de recursos com as tags especificadas
resource "azurerm_resource_group" "example" {
  name     = "${var.name}-rg"
  location = var.location

  tags = {
    BusinessStructure = "Kinoshita Lab"
    TeamName          = "Platform Engineering"
    ValueStream       = "Cloud Platform"
  }
}

# Criar a conta de armazenamento
resource "azurerm_storage_account" "example" {
  name                     = var.name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    BusinessStructure = "Kinoshita Lab"
    TeamName          = "Platform Engineering"
    ValueStream       = "Cloud Platform"
  }
}
