variable "name" {
  description = "O nome da conta de armazenamento e do grupo de recursos"
  type        = string
}

variable "location" {
  description = "A localização do grupo de recursos"
  type        = string
  default     = "eastus2"
}
