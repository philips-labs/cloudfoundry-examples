terraform {
  required_version = ">= 0.15.0"

  required_providers {
    cloudfoundry = {
      source  = "cloudfoundry-community/cloudfoundry"
      version = ">= 0.14.2"
    }
    hsdp = {
      source  = "philips-software/hsdp"
      version = ">= 0.16.1"
    }
    random = {
      source = "random"
    }
  }
}
