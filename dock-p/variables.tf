variable "network_name" {
  description = "Name of the Docker network to create and use"
  type        = string
  default     = "local_cloud_network"
}

variable "db_password" {
  description = "Postgres password (set in terraform.tfvars)"
  type        = string
  sensitive   = true
}

variable "frontend_host_port" {
  description = "Host port to map to the frontend (nginx) container"
  type        = number
  default     = 8080
}

variable "backend_port" {
  description = "Internal port the backend listens on"
  type        = number
  default     = 5000
}
