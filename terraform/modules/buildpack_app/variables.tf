variable "name" {
  type        = string
  description = "The app name"
}

variable "path" {
  type        = string
  description = "The zip file containing the app source code"
}

variable "memory" {
  type        = number
  description = "Memory to allocate"
  default     = 512
}

variable "space_id" {
  type        = string
  description = "The space id to deploy in"
}

variable "domain_id" {
  type        = string
  description = "The domain ID to use for the routes"
}

variable "host_postfix" {
  type        = string
  description = "Host postfix to use"
}
