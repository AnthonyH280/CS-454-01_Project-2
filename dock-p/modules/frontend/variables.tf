variable "network_id" {
  description = "Docker network name to attach the frontend to"
  type        = string
}

variable "backend_alias" {
  description = "Alias/name of the backend service reachable on the Docker network"
  type        = string
  default     = "backend"
}

variable "frontend_host_port" {
  description = "Host port to map to the frontend container"
  type        = number
  default     = 8080
}
