output "container_name" {
  value = docker_container.backend.name
}

output "container_alias" {
  value = "backend"
}
