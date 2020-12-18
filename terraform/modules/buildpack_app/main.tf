resource "cloudfoundry_app" "app" {
  name   = var.name
  path   = data.archive_file.archive.output_path
  space  = var.space_id
  memory = var.memory

  routes {
    route = cloudfoundry_route.route.id
  }
}

resource "cloudfoundry_route" "route" {
  domain   = var.domain_id
  space    = var.space_id
  hostname = "${var.name}-${var.host_postfix}"
}

data "archive_file" "archive" {
  type        = "zip"
  source_dir  = "${path.root}/${var.path}"
  output_path = "${var.name}_archive.zip"
}
