variable "location" {
  description = "Regiao onde os recursos serão criados na Azure"
  type        = string
  default     = "Brazil South"
}

variable "environment" {
  description = "Ambiente que pertencem os recursos criados na Azure"
  type        = string
  default     = "desenvolvimento"
}