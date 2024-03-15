output "sas_token" {
  description = "SAS Token para container de imagens"
  value       = data.azurerm_storage_account_blob_container_sas.sas_token.sas
  sensitive   = true
}

output "container_url" {
  description = "URL do container de Imagens"
  value       = azurerm_storage_container.container.id
}