#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/common-utils.sh"

log_info "Starting AWS Multi-Region Infrastructure Bootstrap..."

REGION="${1:-eu-west-1}"
ENV="${2:-production}"

log_info "Configuring AWS Target Region: ${REGION}"
log_info "Configuring Environment Tag: ${ENV}"

# Simulating AWS Bootstrap Sequence
log_info "Initializing Terraform State Bucket & DynamoDB Lock Table..."
log_success "AWS Infrastructure Bootstrap Complete for Region '${REGION}'!"
