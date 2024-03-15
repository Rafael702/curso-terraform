variable "location" {
  description = "Regiao onde os recursos serao criados na Azure"
  type        = map(string)
  default = {
    "europa" = "West Europe",
    "eua"    = "East US",
    "asia"   = "Japan East",
    "brazil" = "Brazil South"
  }
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