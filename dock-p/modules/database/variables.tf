variable "network_id" {
  description = "Docker network name to attach the container to"
  type        = string
}

variable "db_password" {
  description = "Postgres password"
  type        = string
}

variable "db_user" {
  description = "Postgres user"
  type        = string
  default     = "postgres"
}

variable "db_name" {
  description = "Postgres database name"
  type        = string
  default     = "appdb"
}
