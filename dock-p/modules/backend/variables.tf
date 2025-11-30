variable "network_id" {
  description = "Docker network name to attach the backend to"
  type        = string
}

variable "db_host" {
  description = "Database host (container name or alias)"
  type        = string
  default     = "db"
}

variable "backend_port" {
  description = "Port the backend listens on inside the container"
  type        = number
  default     = 5000
}
