output "frontend_url" {
  value = "http://localhost:${var.frontend_host_port}"
}

output "db_container" {
  value = module.database.container_name
}

output "backend_container" {
  value = module.backend.container_name
}
