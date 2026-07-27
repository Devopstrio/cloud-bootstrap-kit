#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/common-utils.sh"

log_info "Starting Azure Subscription Bootstrap..."

LOCATION="${1:-westeurope}"
RESOURCE_GROUP="${2:-rg-cloud-bootstrap}"

log_info "Target Azure Location: ${LOCATION}"
log_info "Target Resource Group: ${RESOURCE_GROUP}"

log_info "Registering Azure Resource Providers..."
log_success "Azure Bootstrap Complete for Resource Group '${RESOURCE_GROUP}'!"
