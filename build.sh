#!/usr/bin/env bash
# Builds dist/index.html, a standalone page, from src/squiggle.html.
#   ./build.sh          build
#   ./build.sh serve    build, then serve it at http://localhost:8820
#   ./build.sh deploy   build, then publish to https://squiggle.rennko.tech (Cloudflare Workers)
set -euo pipefail
cd "$(dirname "$0")"

mkdir -p dist
{
  printf '<!doctype html>\n<html lang="en">\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '<meta name="description" content="Paint on a big sheet of paper and it plays back as music. Higher marks are higher notes, and you pick the instrument.">\n'
  cat src/squiggle.html
  printf '\n</html>\n'
} > dist/index.html
echo "Built dist/index.html"

case "${1:-}" in
  serve)
    echo "Serving at http://localhost:8820"
    python3 -m http.server 8820 --directory dist ;;
  deploy) npx -y wrangler@4 deploy ;;
esac
