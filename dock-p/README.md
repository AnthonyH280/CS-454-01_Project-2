Project: Local Docker "cloud" provisioned with Terraform

Overview
- Creates 3 containers on a custom Docker network:
  - Frontend: `nginx` listening on host `localhost:8080` (configurable)
  - Backend: lightweight `http-echo` service (listens on internal port 5000)
  - Database: `postgres:15` with password passed via `terraform.tfvars`

Secrets / variables
- Edit `terraform.tfvars` to set a secure `db_password`.

Usage (local machine with Docker running)
1. Open a PowerShell terminal and ensure Docker Desktop is running.

2. Run:

```powershell

cd "whatever the correct directory is"

terraform init

terraform plan

terraform apply #(type yes when asked after using this command)


```

4. Visit `http://localhost:8080` to see the frontend. Use `http://localhost:8080/api/` to reach the backend via the proxy.

Enhancement
- Containers include simple `healthcheck` blocks and `restart` policies so services can self-heal.


