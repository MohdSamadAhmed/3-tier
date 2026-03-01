<h1 align="center">🚀 3-Tier Architecture on AWS using Terraform</h1>

<hr>

<h2>📌 1. Project Overview</h2>

<p>
This project provisions a <strong>3-Tier Architecture</strong> on AWS using Terraform.
</p>

<h3>Infrastructure Includes:</h3>
<ul>
  <li>Presentation Tier (Frontend)</li>
  <li>Application Tier (Backend)</li>
  <li>Database Tier (RDS)</li>
  <li>Secure Networking with VPC</li>
  <li>Load Balancers</li>
  <li>Auto Scaling Groups</li>
  <li>Bastion Host for secure administrative access</li>
</ul>

<p>
This architecture follows industry best practices for scalability, security, high availability, and fault tolerance.
</p>

<hr>

<h2>🏗 2. Architecture Diagram (Logical Flow)</h2>

<pre>
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
</pre>

<hr>

<h2>🧱 3. Infrastructure Components</h2>

<h3>3.1 🌐 Networking Layer</h3>

<ul>
  <li>Custom VPC</li>
  <li>Public Subnets</li>
  <li>Private Subnets</li>
  <li>Internet Gateway</li>
  <li>NAT Gateway</li>
  <li>Route Tables</li>
</ul>

<p><strong>Purpose:</strong> Provides secure network segmentation and controlled internet access.</p>

<hr>

<h3>3.2 🖥 Presentation Tier (Frontend)</h3>

<ul>
  <li>Public Application Load Balancer</li>
  <li>Target Group</li>
  <li>Launch Template</li>
  <li>Auto Scaling Group</li>
  <li>Security Group</li>
</ul>

<p><strong>Purpose:</strong> Handles user traffic and forwards requests to backend servers.</p>

<hr>

<h3>3.3 ⚙ Application Tier (Backend)</h3>

<ul>
  <li>Internal Load Balancer</li>
  <li>Target Group</li>
  <li>Launch Template</li>
  <li>Auto Scaling Group</li>
  <li>Private Subnets</li>
  <li>Security Group</li>
</ul>

<p><strong>Purpose:</strong> Processes business logic and communicates securely with the database tier.</p>

<hr>

<h3>3.4 🗄 Database Tier</h3>

<ul>
  <li>Amazon RDS (MySQL / PostgreSQL)</li>
  <li>Private Subnet</li>
  <li>DB Subnet Group</li>
  <li>Security Group</li>
</ul>

<p><strong>Purpose:</strong> Stores application data securely and is not publicly accessible.</p>

<hr>

<h3>3.5 🔐 Bastion Host</h3>

<ul>
  <li>EC2 Instance in Public Subnet</li>
  <li>SSH Access (Restricted)</li>
</ul>

<p><strong>Purpose:</strong> Provides secure administrative access to private EC2 instances.</p>

<hr>

<h2>📂 4. Project Structure</h2>

<pre>
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
</pre>

<hr>

<h2>⚙ 5. Prerequisites</h2>

<ul>
  <li>AWS Account</li>
  <li>AWS CLI Configured (<code>aws configure</code>)</li>
  <li>Terraform Installed</li>
  <li>SSH Key Pair Created in AWS</li>
</ul>

<hr>

<h2>🚀 6. Deployment Steps</h2>

<h3>Step 1: Initialize Terraform</h3>
<pre><code>terraform init</code></pre>

<h3>Step 2: Validate Configuration</h3>
<pre><code>terraform validate</code></pre>

<h3>Step 3: Plan Infrastructure</h3>
<pre><code>terraform plan</code></pre>

<h3>Step 4: Apply Infrastructure</h3>
<pre><code>terraform apply</code></pre>

<p>Type <strong>yes</strong> to confirm deployment.</p>

<hr>

<h2>🔐 7. Security Best Practices Implemented</h2>

<ul>
  <li>Backend and RDS deployed in Private Subnets</li>
  <li>RDS not publicly accessible</li>
  <li>Restricted Security Group rules</li>
  <li>Bastion Host for controlled SSH access</li>
  <li>Tier isolation</li>
  <li>Auto Scaling for resilience</li>
</ul>

<hr>

<h2>📈 8. High Availability Features</h2>

<ul>
  <li>Multi-AZ Deployment</li>
  <li>Auto Scaling Groups</li>
  <li>Load Balancers with Health Checks</li>
  <li>NAT Gateway for private subnet outbound access</li>
</ul>

<hr>

<h2>🧹 9. Destroy Infrastructure</h2>

<pre><code>terraform destroy</code></pre>

<hr>

<h2>🛠 10. Future Improvements</h2>

<ul>
  <li>S3 Remote Backend with DynamoDB State Locking</li>
  <li>CloudWatch Monitoring & Alarms</li>
  <li>AWS WAF Integration</li>
  <li>CI/CD Pipeline Integration</li>
  <li>SSL Certificate using ACM</li>
  <li>Route 53 DNS Configuration</li>
</ul>

<hr>

<h2>👨‍💻 11. Author</h2>

<p>
<strong>Mohammad Samad Ahmed</strong><br>
Cloud & DevOps Enthusiast
<a href="https://www.linkedin.com/in/mohd-samad-ahmed-5570aa378/" target="_blank">LinkedIn Profile</a>
</p>
