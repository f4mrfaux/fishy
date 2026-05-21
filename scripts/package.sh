#!/bin/bash
# Build a Plasma 6 look-and-feel tarball for upload to store.kde.org.
#
# Produces fishy-plasma6.tar.gz with a flat structure (no wrapper folder),
# so KNewStuff resolves the install path via metadata.json's KPlugin.Id
# and unpacks correctly to:
#
#   ~/.local/share/plasma/look-and-feel/fishy/
#
# Fixes upstream issue #3: tarballs that include a wrapper directory cause
# nested install paths like UcTcDh-fishbowl/fishy/ when users install via
# Plasma's "Get New Splashscreens" UI.

set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

OUT=fishy-plasma6.tar.gz
rm -f "$OUT"

tar -czf "$OUT" \
    --exclude='.git' \
    --exclude='.git/*' \
    --exclude='.claude' \
    --exclude='.claude/*' \
    --exclude='.gitignore' \
    --exclude='.qmlls.ini' \
    --exclude='scripts' \
    --exclude='scripts/*' \
    --exclude='*.tar.gz' \
    metadata.json contents license README.md

echo "Built: $OUT"
echo
echo "Archive contents:"
tar -tzf "$OUT"
echo
echo "Upload $OUT to store.kde.org as-is. Do not wrap it in another folder."
