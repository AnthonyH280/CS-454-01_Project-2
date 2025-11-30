variable "cluster_name" {
  description = "Name of the kind cluster"
  type        = string
  default     = "terraform-kind-cluster"
}

variable "kubeconfig_path" {
  description = "Path where the kubeconfig file will be written"
  type        = string
  default     = "~/.kube/kind-config"
}

variable "namespace_name" {
  description = "Kubernetes namespace to create"
  type        = string
  default     = "app-namespace"
}

variable "app_name" {
  description = "Application name used for labels and resource naming"
  type        = string
  default     = "nginx-app"
}

variable "replicas" {
  description = "Number of pod replicas for the deployment"
  type        = number
  default     = 2
}

variable "app_host_port" {
  description = "Host port to expose the app on (maps to NodePort 30080)"
  type        = number
  default     = 8080
}
