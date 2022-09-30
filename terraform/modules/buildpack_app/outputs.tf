output "endpoint" {
  value = cloudfoundry_route.route.endpoint
  description = "The endpoint of the application"
}
