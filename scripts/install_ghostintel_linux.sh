#!/usr/bin/env bash
set -euo pipefail

TOOLS_DIR="${TOOLS_DIR:-$HOME/m3tm-tools}"
GHOST_DIR="$TOOLS_DIR/GhostIntel"
REPO_URL="https://github.com/ruyynn/GhostIntel.git"

mkdir -p "$TOOLS_DIR"

if [ ! -d "$GHOST_DIR/.git" ]; then
  echo "[M3TM] Cloning GhostIntel into $GHOST_DIR"
  git clone "$REPO_URL" "$GHOST_DIR"
else
  echo "[M3TM] GhostIntel already exists. Pulling latest changes."
  git -C "$GHOST_DIR" pull --ff-only || true
fi

cd "$GHOST_DIR"

python3 -m venv venv
source venv/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt

echo "[M3TM] GhostIntel is ready."
echo "Run: cd $GHOST_DIR && source venv/bin/activate && python ghostintel.py -web"
echo "Open: http://localhost:7331"
