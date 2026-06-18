# 📚 **SmartLogs** - Logger Inteligente para Projetos Python

**SmartLogs** é um pacote robusto e flexível para logging em Python. Com suporte a logs coloridos no terminal, exportação para arquivos, integração com Slack e Telegram, ele foi projetado para simplificar o gerenciamento de logs em qualquer projeto Python.

---

## ✨ **Funcionalidades Principais**
- ✅ **Logs coloridos no terminal** para melhor visualização.
- 📝 **Registro automático de logs em arquivos**.
- 🔔 **Integração com Slack e Telegram** para alertas.
- ⚡ **Suporte a níveis de log**: `DEBUG`, `INFO`, `WARNING`, `ERROR`, `CRITICAL`.
- 📊 **Customização avançada** via variáveis de ambiente.
- 🛠 **Compatível com frameworks** como Django, Flask e FastAPI.
- 🔍 **Recursos avançados de debug** para desenvolvimento e troubleshooting.

---

## ⚡ **Instalação**

Instale o **SmartLogs** diretamente do PyPI:

```bash
pip install SmartLogs
```

> 💡 Requisitos: Python 3.6 ou superior.

---

## 🚀 **Como Usar**

### ✅ **Logging Simples**
```python
from SmartLogs.logger import SmartLogger

logger = SmartLogger()
logger.info("Sistema inicializado com sucesso!")
logger.warning("Atenção! Limite de requisições atingido.")
logger.error("Erro crítico detectado.")
```

### 📝 **Logs em Arquivo**
```python
logger = SmartLogger(log_file="logs.txt", level="DEBUG")
logger.debug("Esta mensagem será registrada no arquivo logs.txt")
```

### 🔔 **Integração com Slack**
```python
import os
os.environ["SMARTLOGS_ENABLE_SLACK"] = "True"
os.environ["SMARTLOGS_SLACK_WEBHOOK"] = "https://hooks.slack.com/services/..."
logger.info("Alerta enviado para Slack!")
```

### 📲 **Integração com Telegram**
```python
os.environ["SMARTLOGS_ENABLE_TELEGRAM"] = "True"
os.environ["SMARTLOGS_TELEGRAM_BOT_TOKEN"] = "SEU_BOT_TOKEN"
os.environ["SMARTLOGS_TELEGRAM_CHAT_ID"] = "SEU_CHAT_ID"
logger.critical("Erro grave! Notificando via Telegram.")
```

### 🔍 **Recursos de Debug**
```python
from SmartLogs.debug import DebugLogger

# Inicializa o logger de debug
debug_logger = DebugLogger(log_file="debug.log")

# Log com stack trace
def funcao_problema():
    debug_logger.debug_with_stack("Erro encontrado aqui!")

# Log de variáveis de ambiente
debug_logger.log_environment_variables(["PATH", "PYTHONPATH"])

# Profiling de função
@debug_logger.profile
def funcao_lenta():
    time.sleep(1)
    return "concluído"

# Inspeção de variáveis
variaveis = {"x": 10, "y": 20}
debug_logger.inspect_variables(locals())
```

### Novos Casos de Uso: Formatação Avançada

#### Formatação JSON
```python
from SmartLogs.formatter import JSONFormatter
from datetime import datetime

formatter = JSONFormatter()
print(formatter.format("Mensagem de log", "INFO", datetime.now()))
```

#### Formatação XML
```python
from SmartLogs.formatter import XMLFormatter
from datetime import datetime

formatter = XMLFormatter()
print(formatter.format("Mensagem de log", "ERROR", datetime.now()))
```

#### Formatação YAML
```python
from SmartLogs.formatter import YAMLFormatter
from datetime import datetime

formatter = YAMLFormatter()
print(formatter.format("Mensagem de log", "WARNING", datetime.now()))
```

#### Formatação em Tabela
```python
from SmartLogs.formatter import TableFormatter
from datetime import datetime

formatter = TableFormatter()
print(formatter.format("Mensagem de log", "DEBUG", datetime.now()))
```

#### Formatação com Template Personalizado
```python
from SmartLogs.formatter import TemplateFormatter
from datetime import datetime

template = "[{timestamp}] {level}: {message}"
formatter = TemplateFormatter(template)
print(formatter.format("Mensagem de log", "INFO", datetime.now()))
```

#### Formatação com Estilos Personalizados (cor, negrito, itálico)
```python
from SmartLogs.formatter import SmartFormatter
from datetime import datetime

formatter = SmartFormatter(
    styles={
        "INFO": {"color": "green", "bold": True},
        "ERROR": {"color": "red", "italic": True}
    }
)
print(formatter.format("Mensagem de log", "INFO", datetime.now()))
print(formatter.format("Mensagem de log", "ERROR", datetime.now()))
```

---

## 🏃 **Executando Testes**

```bash
pytest tests/ --maxfail=1 --disable-warnings -v
```

📈 Para gerar relatório de cobertura:

```bash
pytest --cov=SmartLogs --cov-report=html
```

---

## 🏗 **Estrutura do Projeto**
```
SmartLogs/
│
├── SmartLogs/                 # 📦 Código do pacote
│   ├── __init__.py
│   ├── logger.py              # 🔥 Implementação principal do logger
│   ├── debug.py               # 🔍 Recursos avançados de debug
│   ├── config.py              # ⚙️ Configurações globais do logger
│
├── tests/                     # 🧪 Testes unitários
│   ├── test_logger.py
│   ├── test_debug.py
│
├── pyproject.toml              # ⚙️ Configuração do pacote
├── README.md                  # 📚 Documentação do projeto
├── LICENSE                    # 📜 Licença MIT
└── MANIFEST.in                 # 📋 Inclusão de arquivos extras
```

---

## 📝 **Licença**

Distribuído sob a **Licença MIT**. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

## 👨‍💻 **Autor**

Desenvolvido por **[Roberto Lima](https://github.com/robertolima-dev)** 🚀✨

---

## 💬 **Contato**

- 📧 **Email**: robertolima.izphera@gmail.com
- 💼 **LinkedIn**: [Roberto Lima](https://www.linkedin.com/in/roberto-lima-01/)
- 💼 **Website**: [Roberto Lima](https://robertolima-developer.vercel.app/)
- 💼 **Gravatar**: [Roberto Lima](https://gravatar.com/deliciouslyautomaticf57dc92af0)

---

## ⭐ **Gostou do projeto?**

Deixe uma ⭐ no repositório e compartilhe com a comunidade! 🚀✨  

```bash
git clone https://github.com/robertolima-dev/SmartLogs.git
cd SmartLogs
pip install -e .
```

---

## 🌟 **O que este README oferece?**
- 🎯 **Descrição clara** do projeto e seu propósito.  
- 🛠 **Instruções detalhadas de instalação** e **uso prático**.  
- 🏗 **Estrutura do projeto** para facilitar a navegação.  
- 📝 **Licença e informações do autor** para transparência.

