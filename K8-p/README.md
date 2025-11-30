# PART 2 — Kubernetes Terraform Project

## Overview
Uses Terraform to provision a **kind** (Kubernetes in Docker) cluster and deploy a simple Nginx application with:
- Namespace
- Deployment (with ConfigMap and resource limits)
- Service (NodePort exposed on localhost)


## Prerequisites
1. Docker Desktop  running on Windows
2. kind installed and available in your PATH
3. kubectl  installed 
4. Terraform installed
5. Enhancement added: A resource limitation on the nginx container
   - Limits: 500m CPU, 512Mi memory
   - Requests: 250m CPU, 256Mi memory

## Starting It Up

 1. Start up Terraform
```powershell
cd * the directory where the program is located  *
terraform init
```

### 2. Creating the Webpage

First use this one

```powershell
terraform plan
```

Next this one

```powershell
terraform apply
```
- Type `yes` when prompted

Finally use this one
```powershell
C:* Enter the correct directory here *\kind.exe export kubeconfig --name terraform-kind-cluster
```

http://localhost:8080/  Should now be accessable

### 3. Cleanup
```powershell
terraform destroy
```
- Type `yes` when prompted
- This will delete the kind cluster and all resources

or

- you can just hit the stop button/delete button in the desktop Dockers app






