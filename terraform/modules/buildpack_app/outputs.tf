output "endpoint" {
  value = cloudfoundry_route.route.endpoint
  description = "The endpoint (hot) of the application"
}
