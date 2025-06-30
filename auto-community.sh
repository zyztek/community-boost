
#!/bin/bash

# --- CONFIGURACIÓN ---

# URL base del repo de plantillas
TEMPLATE_REPO="https://raw.githubusercontent.com/zyztek/community-boost/main"

# Lista de archivos de comunidad
FILES=(
  "README.md"
  "CONTRIBUTING.md"
  "CODE_OF_CONDUCT.md"
  "CHANGELOG.md"
  ".github/ISSUE_TEMPLATE/bug_report.md"
  ".github/ISSUE_TEMPLATE/feature_request.md"
  ".github/PULL_REQUEST_TEMPLATE.md"
)

set -e

# --- PARSE REPO DESTINO ---
if [[ -z "$1" ]] || [[ "$1" != "--repo" ]]; then
  echo "Uso: $0 --repo <owner/repo>"
  exit 1
fi

REPO="$2"
BRANCH="${3:-main}"

echo "Clonando $REPO..."
gh repo clone "$REPO"
cd "$(basename "$REPO")"

# --- DESCARGA Y COPIA LOS ARCHIVOS ---
for file in "${FILES[@]}"; do
  mkdir -p "$(dirname "$file")"
  echo "Descargando $file..."
  curl -sSfL "$TEMPLATE_REPO/$file" -o "$file"
done

# --- COMMIT Y PUSH ---
git add .
git commit -m "chore: add/update spectacular community files 🚀"
git push origin "$BRANCH"

echo "¡Listo! 🟢 Todos los archivos de comunidad han sido implementados en $REPO"
