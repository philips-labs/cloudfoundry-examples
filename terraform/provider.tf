provider "cloudfoundry" {
  api_url  = data.hsdp_config.cf.url
  user     = var.cf_username
}

provider "random" {
}

provider "hsdp" {
}
