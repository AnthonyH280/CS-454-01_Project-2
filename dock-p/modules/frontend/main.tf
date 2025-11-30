terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

resource "docker_image" "nginx" {
  name = "nginx:stable-alpine"
}

resource "docker_container" "nginx" {
  name  = "local_frontend"
  image = docker_image.nginx.name

  ports {
    internal = 80
    external = var.frontend_host_port
  }

  volumes {
    host_path      = abspath("${path.module}/nginx.conf")
    container_path = "/etc/nginx/conf.d/default.conf"
    read_only      = true
  }

  restart = "on-failure"

  networks_advanced {
    name = var.network_id
  }

  
}
