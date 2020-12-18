data "archive_file" "golang" {
  type        = "zip"
  source_dir  = "../apps/golang"
  output_path = "golang.zip"
}

data "archive_file" "nodejs" {
  type        = "zip"
  source_dir  = "../apps/nodejs"
  output_path = "nodejs.zip"
}

data "archive_file" "aspnetcore" {
  type        = "zip"
  source_dir  = "../apps/aspnetcore"
  output_path = "aspnetcore.zip"
}

data "cloudfoundry_org" "org" {
  name = var.cf_org
}

data "cloudfoundry_space" "space" {
  org  = data.cloudfoundry_org.org.id
  name = var.cf_space
}

data "cloudfoundry_domain" "domain" {
  name = var.cf_domain
}
