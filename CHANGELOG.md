# 📜 Changelog


## [1.1.2] - 2026-06-18
Nota: a tag `v1.1.1` foi criada por engano sem nunca disparar o release
workflow (0 runs) e nunca chegou a ser publicada no PyPI; esta versão a
substitui.

### Corrigido
- `pyyaml` faltava em `[project.dependencies]` no `pyproject.toml`: o wheel
  publicado não instalava PyYAML, mesmo `formatter.py` dependendo dele.
- `ci.yml` não instalava o pacote (`pip install -e .`) antes do `pytest`,
  causando `ModuleNotFoundError: colorama` na CI.

### Alterado
- Removido `setup.py` duplicado; `pyproject.toml` passa a ser a única fonte
  de metadados do pacote.
- Build via `python -m build` + `twine check`, com CI (`ci.yml`) e release
  automatizado por tag (`release.yml`) publicando no PyPI.

## [1.1.0] - 2025-05-29
### Adicionado
- Suporte a múltiplos formatadores avançados: JSON, XML, YAML, Tabela e Template personalizado.
- Permite customização de estilos (cor, negrito, itálico) por nível de log.
- Emojis opcionais para níveis de log.
- Testes automatizados para todos os novos formatadores.

## [1.0.0] - 2025-05-08
### Adicionado
- Recursos avançados de debug:
  - Stack trace detalhado
  - Log de variáveis de ambiente
  - Profiling de funções
  - Inspeção de variáveis
- Testes unitários para recursos de debug
- Documentação atualizada com exemplos de uso

## [0.1.1] - 2024-03-08
### Adicionado
- Ajustes

## [0.1.0] - 2024-03-01
### Adicionado
- Implementação inicial do logger
- Suporte a logs coloridos no terminal
- Exportação para arquivos
- Integração com Slack e Telegram