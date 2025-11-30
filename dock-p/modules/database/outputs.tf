output "container_name" {
  value = docker_container.postgres.name
}

output "db_port" {
  value = 5432
}
