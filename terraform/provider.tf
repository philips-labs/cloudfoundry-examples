provider "cloudfoundry" {
  api_url  = data.hsdp_config.cf.url
  user     = var.cf_username
  password = var.cf_password
}

provider "random" {
}

provider "hsdp" {
}
