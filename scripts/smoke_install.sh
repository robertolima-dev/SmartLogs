#!/usr/bin/env bash
# Builda o wheel e instala numa venv limpa (sem deps de dev) para pegar
# dependências/entry points que só faltam fora do ambiente de desenvolvimento.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

rm -rf dist build ./*.egg-info
python -m build

VENV_DIR="$(mktemp -d)/venv"
python -m venv "$VENV_DIR"
"$VENV_DIR/bin/pip" install -q "$(ls dist/*.whl)"

"$VENV_DIR/bin/python" -c "
from SmartLogs import SmartLogger
from SmartLogs.formatter import SmartFormatter, JSONFormatter
log = SmartLogger('smoke')
log.info('smoke test ok')
print('IMPORT OK')
"

rm -rf "$(dirname "$VENV_DIR")"
echo "Smoke test passou."
