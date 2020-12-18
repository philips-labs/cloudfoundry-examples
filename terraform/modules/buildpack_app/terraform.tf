terraform {
  required_version = ">= 0.14.0"

  required_providers {
    cloudfoundry = {
      source  = "philips-labs/cloudfoundry"
      version = ">= 0.1206.2"
    }
  }
}
