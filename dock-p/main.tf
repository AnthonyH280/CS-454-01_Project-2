terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
}

resource "docker_network" "local_cloud" {
  name = var.network_name
}

module "database" {
  source     = "./modules/database"
  network_id = docker_network.local_cloud.name
  db_password = var.db_password
}

module "backend" {
  source      = "./modules/backend"
  network_id  = docker_network.local_cloud.name
  db_host     = module.database.container_name
  backend_port = var.backend_port
}

module "frontend" {
  source            = "./modules/frontend"
  network_id        = docker_network.local_cloud.name
  backend_alias     = module.backend.container_alias
  frontend_host_port = var.frontend_host_port
}
