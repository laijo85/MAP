#!/usr/bin/env bash
set -euo pipefail

# Regenerate the map and publish to GitHub Pages (docs/).
# Adjust paths if directory names differ.

PYTHON_BIN=${PYTHON_BIN:-python}
MAP_SCRIPT="Maps/upload_map_to_ee.py"
NC_FILE="SWOT data/sa_sword_v16_SOS_results.nc"
ARG_FILE="Estaciones de caudales/Argentina/gauges and nodes within 1000m.csv"
COL_FILE="Estaciones de caudales/Colombia/gauges and nodes within 1000m.csv"
PER_FILE="Estaciones de caudales/Peru/gauges and nodes within 1000m.csv"
BRA_FILE="Estaciones de caudales/Brasil/Descarga Euge/gauges and nodes within 1000m.csv"
OUT_HTML="docs/index.html"

echo "[1/4] Generating map HTML -> $OUT_HTML"
$PYTHON_BIN "$MAP_SCRIPT" \
  --nc "$NC_FILE" \
  --arg "$ARG_FILE" \
  --col "$COL_FILE" \
  --per "$PER_FILE" \
  --bra "$BRA_FILE" \
  --html-out "$OUT_HTML" \
  --no-ee-map

echo "[2/4] Staging changes"
git add "$OUT_HTML"

if git diff --cached --quiet; then
  echo "No map changes detected; nothing to commit."
else
  COMMIT_MSG="Update published map $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo "[3/4] Committing: $COMMIT_MSG"
  git commit -m "$COMMIT_MSG"
fi

echo "[4/4] Pushing"
git push origin HEAD

echo "Done. If GitHub Pages is enabled (docs/), the site will update shortly."
