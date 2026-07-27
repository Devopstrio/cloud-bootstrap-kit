#!/usr/bin/env bash
set -euo pipefail

# Color Codes for Terminal Output
GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' # No Color

log_info() {
    echo -e "${CYAN}[INFO] ${1}${NC}"
}

log_success() {
    echo -e "${GREEN}[SUCCESS] ${1}${NC}"
}

log_error() {
    echo -e "${RED}[ERROR] ${1}${NC}" >&2
}

check_command_exists() {
    local cmd="$1"
    if ! command -v "$cmd" &> /dev/null; then
        log_error "Required CLI '$cmd' is not installed."
        return 1
    fi
    log_info "Command '$cmd' is available."
    return 0
}
