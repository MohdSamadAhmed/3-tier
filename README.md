🚀 3-Tier Architecture on AWS using Terraform
📌 Project Overview

This project provisions a 3-Tier Architecture on AWS using Terraform.

The infrastructure includes:

Presentation Tier (Frontend)

Application Tier (Backend)

Database Tier (RDS)

Secure networking with VPC

Load Balancers

Auto Scaling

Bastion Host for secure access

This setup follows industry best practices for scalability, security, and high availability.

🏗 Architecture Diagram (Logical Flow)
User
  │
  ▼
Application Load Balancer (Frontend)
  │
  ▼
Frontend EC2 Instances (Auto Scaling Group)
  │
  ▼
Internal Load Balancer (Backend)
  │
  ▼
Backend EC2 Instances (Auto Scaling Group)
  │
  ▼
RDS Database (Private Subnet)

🧱 Infrastructure Components
1️⃣ Networking Layer

Custom VPC

Public Subnets

Private Subnets

Internet Gateway

NAT Gateway

Route Tables

2️⃣ Presentation Tier (Frontend)

Application Load Balancer (Public)

Target Group

Launch Template

Auto Scaling Group

Security Group

Purpose:
Handles user traffic and forwards requests to backend.

3️⃣ Application Tier (Backend)

Internal Load Balancer

Target Group

Launch Template

Auto Scaling Group

Private Subnets

Security Group

Purpose:
Processes business logic and communicates with database.

4️⃣ Database Tier

Amazon RDS (MySQL/PostgreSQL)

Private Subnet

DB Subnet Group

Security Group

Purpose:
Stores application data securely (not publicly accessible).

5️⃣ Bastion Host

EC2 Instance in Public Subnet

SSH Access

Used to access private servers securely

📂 Project Structure
.
├── provider.tf
├── variable.tf
├── vpc.tf
├── security_group.tf
├── launctemp.tf
├── frontend-tg&lb.tf
├── backend-tg&lb.tf
├── autoscalling.tf
├── bastionserver.tf
├── rds.tf
├── outputs.tf
├── .gitignore
└── README.md

⚙️ Prerequisites

AWS Account

AWS CLI configured

Terraform installed

SSH key pair created

🚀 Deployment Steps
1️⃣ Initialize Terraform
terraform init

2️⃣ Validate Configuration
terraform validate

3️⃣ Plan Infrastructure
terraform plan

4️⃣ Apply Infrastructure
terraform apply


Type yes to confirm.

🔐 Security Best Practices Implemented

Private subnets for backend & RDS

RDS not publicly accessible

Security Groups with restricted access

Bastion host for SSH

Separation of tiers

Auto Scaling for high availability

📈 High Availability Features

Multi-AZ deployment

Auto Scaling Groups

Load Balancers

NAT Gateway for private subnet internet access

🧹 Destroy Infrastructure

To delete all resources:

terraform destroy

🛠 Future Improvements

Add S3 Remote Backend

Enable CloudWatch Monitoring

Add WAF

CI/CD Integration

SSL with ACM

👨‍💻 Author

Mohammad Samad Ahmed
Cloud & DevOps Enthusiast
