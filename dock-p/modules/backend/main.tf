terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

resource "docker_image" "http_echo" {
  name = "hashicorp/http-echo:latest"
}

resource "docker_container" "backend" {
  name  = "local_backend"
  image = docker_image.http_echo.name

  command = ["-text=Hello from backend", "-listen=:${var.backend_port}"]

  restart = "on-failure"

  networks_advanced {
    name = var.network_id
    aliases = ["backend"]
  }
}
