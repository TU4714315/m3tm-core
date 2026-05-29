#!/usr/bin/env bash
set -euo pipefail

GHOST_DIR="$HOME/m3tm-tools/GhostIntel"

if [ ! -d "$GHOST_DIR" ]; then
  echo "[M3TM] GhostIntel not found. Installing first..."
  bash scripts/install_ghostintel_linux.sh
fi

cd "$GHOST_DIR"
source venv/bin/activate

echo "[M3TM] Starting GhostIntel Web UI on port 7331..."
echo "[M3TM] In GitHub Codespaces, open the forwarded port 7331 from the Ports tab."

python ghostintel.py -web
