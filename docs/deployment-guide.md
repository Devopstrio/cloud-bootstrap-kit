# Developer & Integration Guide: Multi-Cloud Bootstrap Kit

This guide outlines installation, shell execution, Terraform state initialization, and test verification.

* ⬅️ **Back to Main Overview:** [README.md](../README.md)
* 📖 **Architecture Specification:** [ARCHITECTURE.md](ARCHITECTURE.md)

---

## 1. Installation

```bash
git clone https://github.com/Devopstrio/cloud-bootstrap-kit.git
cd cloud-bootstrap-kit

# Make scripts executable
chmod +x scripts/*.sh tests/*.sh
```

## 2. Bootstrapping AWS Environment

```bash
./scripts/bootstrap-aws.sh eu-west-1 production
```

## 3. Bootstrapping Azure Environment

```bash
./scripts/bootstrap-azure.sh westeurope rg-cloud-bootstrap
```

## 4. Bootstrapping GCP Environment

```bash
./scripts/bootstrap-gcp.sh gcp-bootstrap-prod europe-west1
```

## 5. Running POSIX Shell Test Suite

```bash
bash tests/test-scripts.sh
```
