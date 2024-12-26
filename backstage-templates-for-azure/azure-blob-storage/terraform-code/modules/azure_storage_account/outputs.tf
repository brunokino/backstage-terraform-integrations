output "storage_account_name" {
  description = "O nome da conta de armazenamento"
  value       = azurerm_storage_account.example.name
}

output "resource_group_name" {
  description = "O nome do grupo de recursos"
  value       = azurerm_resource_group.example.name
}
