resource "random_id" "host" {
  byte_length = 8
}

module "golang" {
  source = "./modules/buildpack_app"
  name   = "golang"
  path   = "../apps/golang"
  space_id  = data.cloudfoundry_space.space.id
  domain_id = data.cloudfoundry_domain.domain.id
  host_postfix = random_id.host.hex
  memory = 32
}

module "nodejs" {
  source = "./modules/buildpack_app"
  name   = "nodejs"
  path   = "../apps/nodejs"
  space_id  = data.cloudfoundry_space.space.id
  domain_id = data.cloudfoundry_domain.domain.id
  host_postfix = random_id.host.hex
  memory = 128
}

module "aspnetcore" {
  source = "./modules/buildpack_app"
  name   = "aspnetcore"
  path   = "../apps/aspnetcore"
  space_id  = data.cloudfoundry_space.space.id
  domain_id = data.cloudfoundry_domain.domain.id
  host_postfix = random_id.host.hex
  memory = 512
}
