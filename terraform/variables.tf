variable "cf_org" {
  type        = string
  description = "The CF organization to use"
}

variable "cf_space" {
  type        = string
  description = "The CF space to use"
}

variable "cf_username" {
  type        = string
  description = "The CF username"
}

variable "cf_password" {
  type        = string
  description = "The CF password"
  sensitive   = true
}

variable "cf_api_endpoint" {
  type        = string
  description = "The CF API endpoint to use"
  default     = "https://api.cloud.pcftest.com"
}

variable "cf_domain" {
  type        = string
  description = "The CF domain to use"
  default     = "cloud.pcftest.com"
}


