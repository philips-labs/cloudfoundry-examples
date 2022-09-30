data "hsdp_config" "cf" {
  region  = var.cf_region
  service = "cf"
}

data "archive_file" "golang" {
  type        = "zip"
  source_dir  = "../apps/golang"
  output_path = "../apps/golang.zip"
}

data "archive_file" "nodejs" {
  type        = "zip"
  source_dir  = "../apps/nodejs"
  output_path = "../apps/nodejs.zip"
}

data "archive_file" "aspnetcore" {
  type        = "zip"
  source_dir  = "../apps/aspnetcore"
  output_path = "../apps/aspnetcore.zip"
}

data "cloudfoundry_org" "org" {
  name = var.cf_org
}

data "cloudfoundry_space" "space" {
  org  = data.cloudfoundry_org.org.id
  name = var.cf_space
}

data "cloudfoundry_domain" "domain" {
  name = data.hsdp_config.cf.domain
}
