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

variable "cf_region" {
  type        = string
  description = "The CF region to deploy to"
  default     = "eu-west"
}

