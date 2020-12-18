resource "cloudfoundry_app" "golang" {
  name   = "golang"
  path   = data.archive_file.golang.output_path
  space  = data.cloudfoundry_space.space.id
  memory = 32
}

resource "cloudfoundry_app" "nodejs" {
  name   = "nodejs"
  path   = data.archive_file.nodejs.output_path
  space  = data.cloudfoundry_space.space.id
  memory = 128
}

resource "cloudfoundry_app" "aspnetcore" {
  name   = "aspnetcore"
  path   = data.archive_file.aspnetcore.output_path
  space  = data.cloudfoundry_space.space.id
  memory = 512
}
