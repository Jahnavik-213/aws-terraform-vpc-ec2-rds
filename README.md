# AWS VPC + EC2 + RDS with Terraform

Deploys a **secure 3‑tier AWS infrastructure** using Terraform:

- **VPC** with public (EC2) and private (RDS) subnets
- **EC2 instance** in public subnet with SSH access
- **RDS MySQL** in private subnet, accessible only from EC2
- **Security Groups** enforcing least privilege
- **Internet Gateway** for EC2 outbound access

**Key Features:**
- Multi‑AZ ready (2 subnets per AZ)
- Parameterized (dev/prod via tfvars)
- Remote state backend ready
- Cleanup script included

## Quick Start
```bash
# Clone repo
git clone <your-repo-url>
cd aws-terraform-vpc-ec2-rds

# Configure your AWS credentials and vars
terraform init
terraform plan
terraform apply

**Outputs after apply:**
EC2 Public IP: <ec2_ip>
RDS Endpoint: <rds_endpoint>
DB Username: admin
DB Password: <password_from_vars>

**Cleanup**
terraform destroy
