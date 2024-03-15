output "storage_account_id" {
  description = "ID da storage Accounts criadas na Azure"
  value       = [for sa in azurerm_storage_account.storage_account : sa.id]
}

output "sa_primary_access_key" {
  description = "Primary Access Keys da Storage Account criadas na Azure"
  value       = { for key, sa in azurerm_storage_account.storage_account : key => sa.primary_access_key }
  sensitive   = true
}