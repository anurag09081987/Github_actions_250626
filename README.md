# 🚀 GitHub Actions with Terraform on Azure

This repository demonstrates how to automate Terraform deployments on Microsoft Azure using GitHub Actions.

The project implements a simple CI/CD pipeline where Terraform code is validated during Pull Requests and automatically deployed when changes are pushed to the `main` branch.

---

# 📖 Project Overview

This project provisions Azure infrastructure using Terraform and automates the deployment process through GitHub Actions.

Current deployment includes:

* Azure Resource Group
* Remote Terraform State stored in Azure Storage Account
* CI pipeline for validation and planning
* CD pipeline for automatic deployment

---

# 🏗️ Architecture

```
Developer
     │
     │ Push / Pull Request
     ▼
GitHub Repository
     │
     ▼
GitHub Actions
     │
     ├───────────────┐
     │               │
     ▼               ▼
CI Workflow      CD Workflow
(terraform       (terraform
validate/plan)     apply)
                     │
                     ▼
              Azure Subscription
                     │
                     ▼
          Azure Resource Group
```

---

# ✨ Features

* Infrastructure as Code using Terraform
* GitHub Actions based CI/CD
* Azure OIDC Authentication
* Remote Terraform Backend
* Automatic Terraform Validation
* Automatic Terraform Plan
* Automatic Terraform Apply
* Azure Resource Group Deployment

---

# 🛠️ Technologies Used

* Terraform
* GitHub Actions
* Microsoft Azure
* AzureRM Provider
* Azure Storage Account (Terraform Backend)

---

# 📁 Project Structure

```
.
├── .github
│   └── workflows
│       ├── ci.yml
│       └── cd.yml
│
├── resource
│   ├── provider.tf
│   └── main.tf
│
├── .gitignore
└── README.md
```

---

# ⚙️ CI Workflow

Triggered on:

```
Pull Request → main
```

Steps performed:

1. Checkout Repository
2. Login to Azure
3. Install Terraform
4. Terraform Init
5. Terraform Validate
6. Terraform Plan

This workflow ensures infrastructure changes are validated before merging.

---

# 🚀 CD Workflow

Triggered on:

```
Push → main
```

Steps performed:

1. Checkout Repository
2. Login to Azure
3. Install Terraform
4. Terraform Init
5. Terraform Apply

Infrastructure is automatically deployed after code is merged into the main branch.

---

# ☁️ Azure Resources Created

Current Terraform configuration provisions:

* Azure Resource Group

Resource Group Name:

```
action1
```

Region:

```
West Europe
```

---

# 🔐 Authentication

Azure authentication is performed using GitHub Actions OIDC with the following GitHub Secrets:

* AZURE_CLIENT_ID
* AZURE_TENANT_ID
* AZURE_SUBSCRIPTION_ID

---

# 📦 Terraform Remote Backend

Terraform state is stored remotely in Azure Storage.

Backend Type:

```
AzureRM
```

Benefits:

* Centralized state management
* Team collaboration
* State locking
* Secure storage

---

# ▶️ Running Locally

Clone repository

```bash
git clone https://github.com/anurag09081987/Github_actions_250626.git
```

Move into project

```bash
cd Github_actions_250626
```

Initialize Terraform

```bash
terraform init
```

Validate configuration

```bash
terraform validate
```

Generate execution plan

```bash
terraform plan
```

Deploy infrastructure

```bash
terraform apply
```

---

# 📌 Future Improvements

* Deploy Virtual Network
* Network Security Groups
* Azure Virtual Machines
* Azure Key Vault
* Terraform fmt check
* tfsec security scanning
* Checkov policy scanning
* Manual approval before production deployment
* Multi-environment deployment (Dev/Test/Prod)

---

# 👨‍💻 Author

**Anurag Chauhan**

Azure | Terraform | GitHub Actions | DevOps Engineer

---

# ⭐ If you found this project useful, consider giving it a Star.
