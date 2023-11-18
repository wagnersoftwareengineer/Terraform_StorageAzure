variable "location" {
  type        = string
  default     = "West Europe"
  description = "This variable to indicate a region about resource."
}

variable "account_tier" {
  type        = string
  default     = "Standard"
  description = "Tier of Storage Account"
}

variable "account_replication_type" {
  type        = string
  default     = "LRS"
  description = "Kind of data replication"
}

