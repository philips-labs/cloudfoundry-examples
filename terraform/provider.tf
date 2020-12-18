provider "cloudfoundry" {
  api_url  = var.cf_api_endpoint
  user     = var.cf_username
  password = var.cf_password
}

provider "random" {
}
