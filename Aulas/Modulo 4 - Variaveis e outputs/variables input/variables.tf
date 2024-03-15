variable "location" {
  description = "Regiao onde os recursos serao criados na Azure"
  type        = string
  default     = "West Europe"
}

variable "account_tier" {
  description = "Tier da Storage Account na Azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicacao de dados da Storage Account"
  type        = string
  default     = "LRS"
}

variable "resource_group_name" {
  description = "Nome para o Resource Group na Azure"
  type        = string
  default     = "rg-curso-terraform"
}

variable "storage_account_name" {
  description = "Nome da Storage Account na Azure"
  type        = string
  default     = "rafaelsantosterraform"
}

variable "container_name" {
  description = "Nome do Container na Azure"
  type        = string
  default     = "container-terraform"
}