variable "config" {
  description = "Eventhub namespace configuration"
  type        = map(any)
}

variable "extra_tags" {
  description = "Additional tags to associate"
  type        = map(string)
  default     = {}
}
