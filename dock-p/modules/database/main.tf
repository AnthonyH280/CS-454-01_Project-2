terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

resource "docker_image" "postgres" {
  name         = "postgres:15"
  keep_locally = false
}

resource "docker_container" "postgres" {
  name  = "local_postgres"
  image = docker_image.postgres.name

  env = [
    "POSTGRES_PASSWORD=${var.db_password}",
    "POSTGRES_USER=${var.db_user}",
    "POSTGRES_DB=${var.db_name}",
  ]

  restart = "on-failure"

  networks_advanced {
    name = var.network_id
    aliases = ["db"]
  }

  healthcheck {
    test        = ["CMD-SHELL", "pg_isready -U ${var.db_user}"]
    interval    = "10s"
    timeout     = "2s"
    retries     = 5
    start_period = "5s"
  }
}
