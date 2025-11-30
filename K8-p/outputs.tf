output "cluster_name" {
  description = "Name of the kind cluster"
  value       = kind_cluster.default.name
}

output "cluster_endpoint" {
  description = "Kubernetes API server endpoint"
  value       = kind_cluster.default.endpoint
}

output "kubeconfig_path" {
  description = "Path to the kubeconfig file"
  value       = kind_cluster.default.kubeconfig_path
}

output "namespace" {
  description = "Kubernetes namespace where resources are deployed"
  value       = kubernetes_namespace.app.metadata[0].name
}

output "service_name" {
  description = "Name of the Kubernetes service"
  value       = kubernetes_service.app.metadata[0].name
}

output "app_url" {
  description = "URL to access the application"
  value       = "http://localhost:${var.app_host_port}"
}

output "kubectl_command" {
  description = "Command to configure kubectl to use this cluster"
  value       = "kind export kubeconfig --name ${var.cluster_name}"
}
