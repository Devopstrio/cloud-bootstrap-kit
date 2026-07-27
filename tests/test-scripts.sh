#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PARENT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

echo "========================================="
echo " Running Shell Bootstrap Test Suite..."
echo "========================================="

# 1. Test common-utils.sh sourcing
echo "Testing common-utils.sh sourcing..."
source "${PARENT_DIR}/scripts/common-utils.sh"
log_info "Common utility functions loaded successfully."

# 2. Test AWS Bootstrap Script execution
echo "Testing AWS bootstrap script..."
bash "${PARENT_DIR}/scripts/bootstrap-aws.sh" "us-east-1" "test"

# 3. Test Azure Bootstrap Script execution
echo "Testing Azure bootstrap script..."
bash "${PARENT_DIR}/scripts/bootstrap-azure.sh" "westeurope" "rg-test"

# 4. Test GCP Bootstrap Script execution
echo "Testing GCP bootstrap script..."
bash "${PARENT_DIR}/scripts/bootstrap-gcp.sh" "gcp-test-project" "europe-west1"

echo "========================================="
echo " SUCCESS: All Shell Bootstrap Tests Passed!"
echo "========================================="
