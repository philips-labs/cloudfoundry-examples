output "golang_url" {
  value = "https://${module.golang.endpoint}"
}

output "nodejs_url" {
  value = "https://${module.nodejs.endpoint}"
}

output "aspnetcore_url" {
  value = "https://${module.aspnetcore.endpoint}"
}
