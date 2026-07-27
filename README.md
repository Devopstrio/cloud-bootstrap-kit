<div align="center">

<img src="https://raw.githubusercontent.com/Devopstrio/.github/main/assets/Browser_logo.png" height="90" alt="Devopstrio Logo" />

# cloud-bootstrap-kit

### Multi-Cloud Infrastructure & Terraform State Bootstrap Automation Kit

[![Build Status](https://img.shields.io/badge/Build-Passing-brightgreen?style=flat-square)](https://devopstrio.co.uk)
[![Bash Shell](https://img.shields.io/badge/Shell-Bash-4EAA25?style=flat-square)](https://gnu.org/software/bash)
[![Terraform Version](https://img.shields.io/badge/Terraform-v1.8.5-623CE4?style=flat-square)](https://terraform.io)

</div>

---

## ⚡ Technical Overview & Kit Scope

The **Cloud Bootstrap Kit** provides production-grade automation scripts and Terraform templates for initializing multi-cloud enterprise environments (AWS, Azure, GCP).

It automates initial Terraform state storage bucket creation, DynamoDB state locking tables, Azure Resource Groups, and GCP Project API enablement across enterprise accounts.

<p align="center">
  <img src="docs/images/architecture_diagram.jpg" alt="Multi-Cloud Bootstrap Kit Architecture" width="100%" />
</p>

---

## 📚 Documentation & Architecture Guides

* 📖 **Architecture Specification:** [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md)
* 📘 **Deployment & Integration Guide:** [docs/deployment-guide.md](docs/deployment-guide.md)

---

## 🔄 Bootstrap Execution Flow

```mermaid
flowchart TD
    DevOps[DevOps Platform Engineers] -->|1. Run Bootstrap Script| Script[scripts/bootstrap-aws.sh]
    Script -->|2. Check CLI Credentials| CheckCreds{Is Cloud Credentials Valid?}
    CheckCreds -- Credentials Missing --> Error[Exit 1 with Configuration Error]
    CheckCreds -- Credentials Valid --> ProvisionState[Provision S3 State & DynamoDB Locks]
    ProvisionState -->|3. Apply Infrastructure Bootstrap| Cloud[AWS / Azure Cloud Subsystems]
```

---

## 📂 Repository Directory Layout

```
cloud-bootstrap-kit/
├── .github/
│   └── workflows/
│       └── bootstrap-ci.yml     # Bash & Terraform CI validation pipeline
├── docs/
│   ├── ARCHITECTURE.md          # Architecture specification document
│   ├── deployment-guide.md      # Integration & shell execution manual
│   └── images/
│       └── architecture_diagram.jpg # Visual blueprint diagram
├── scripts/
│   ├── bootstrap-aws.sh         # AWS account & region initializer
│   ├── bootstrap-azure.sh       # Azure subscription & tenant initializer
│   ├── bootstrap-gcp.sh         # GCP project & API initializer
│   └── common-utils.sh          # Common logger & helper utilities
├── templates/
│   ├── aws/
│   │   └── bootstrap.tf         # AWS S3 state & DynamoDB lock template
│   └── azure/
│       └── bootstrap.tf         # Azure SA state storage template
├── tests/
│   └── test-scripts.sh          # Shell script integration test suite
├── .gitignore                   # Git ignore file
└── README.md                    # Bootstrap manual documentation
```

---

## 🚀 Quick Start Guide

### 1. Installation & Script Permissions

```bash
# Clone repository
git clone https://github.com/Devopstrio/cloud-bootstrap-kit.git
cd cloud-bootstrap-kit

# Grant execution permissions
chmod +x scripts/*.sh tests/*.sh
```

### 2. Bootstrap AWS Account & State Storage

```bash
./scripts/bootstrap-aws.sh eu-west-1 production
```

### 3. Bootstrap Azure Environment

```bash
./scripts/bootstrap-azure.sh westeurope rg-cloud-bootstrap
```

### 4. Run Shell Integration Test Suite

```bash
bash tests/test-scripts.sh
```

<div align="center">

<sub>&copy; 2026 Devopstrio &mdash; Engineering Uninterrupted Global Workforce Productivity.</sub>

</div>
