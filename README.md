## Terraform AWS sample (us-east-1)

This example creates basic infrastructure in AWS (region: us-east-1 by default):
- VPC
- Public subnet
- Internet Gateway + Route Table
- Security Group (HTTP and optionally SSH)
- EC2 instance (Amazon Linux 2) with nginx installed via user_data
- S3 bucket (with a random suffix for uniqueness)

Files:
- versions.tf         - Terraform & provider requirements
- provider.tf         - AWS provider config
- variables.tf        - Input variables
- data.tf             - AMI lookup
- main.tf             - Resource definitions
- outputs.tf          - Useful outputs
- terraform.tfvars.example - Example variables file

Usage:
1. Install Terraform (>= 1.4.0).
2. Copy terraform.tfvars.example to terraform.tfvars and edit values (notably `key_name` if you want SSH).
3. Initialize:
   terraform init
4. Validate & plan:
   terraform validate
   terraform plan
5. Apply:
   terraform apply

Notes and warnings:
- This will create real AWS resources and may incur costs. Destroy resources when done:
  terraform destroy
- For production, do not allow SSH from 0.0.0.0/0. Use a restricted CIDR or AWS Session Manager.
- The S3 bucket has `force_destroy = true` for demo convenience — this will delete bucket contents on destroy. Remove or change for production.
- The example uses a single public subnet and a publicly accessible EC2 instance for simplicity. For production, use private subnets, NAT, and multi-AZ configuration for durability.

If you'd like:
- RDS/Postgres or an RDS subnet group example
- An autoscaling group + launch template
- Private/public multi-AZ networking
- Terraform Cloud / backend config
Tell me which resources and I will extend the script.
