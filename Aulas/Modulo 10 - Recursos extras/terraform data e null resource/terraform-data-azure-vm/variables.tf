variable "location" {
  description = "Regiao onde os recursos serão criados na Azure"
  type        = string
  default     = "Brazil South"
}

variable "infra_version" {
  description = "Versão da infraestrutura"
  type = number
  default = 2
}