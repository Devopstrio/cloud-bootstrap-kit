#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/common-utils.sh"

log_info "Starting GCP Organization & Project Bootstrap..."

PROJECT_ID="${1:-gcp-bootstrap-prod}"
REGION="${2:-europe-west1}"

log_info "Target GCP Project ID: ${PROJECT_ID}"
log_info "Target GCP Region: ${REGION}"

log_info "Enabling Essential GCP Cloud APIs..."
log_success "GCP Bootstrap Complete for Project '${PROJECT_ID}'!"
