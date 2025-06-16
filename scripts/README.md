## ⚙️ Scripts de Automação
Para facilitar a criação de novos AIPs e ADRs, este repositório fornece scripts que geram a estrutura automaticamente com base nos templates.

📁 Local: scripts/
~~~
scripts/
├── new-aip.sh       # Cria novo AIP (Linux/macOS)
├── new-aip.ps1      # Cria novo AIP (Windows PowerShell)
├── new-adr.sh       # Cria novo ADR (Linux/macOS)
├── new-adr.ps1      # Cria novo ADR (Windows PowerShell)
~~~

### ▶️ Como usar
✅ Criar novo AIP (Proposta de Arquitetura)

#### Linux/macOS (bash):
~~~
cd scripts
./new-aip.sh 0002
~~~

#### Windows (PowerShell):

~~~
cd scripts
.\new-aip.ps1 -Number 0002
~~~

Isso criará:

~~~
aip/AIP-0002/
├── AIP-0002.md       # Proposta com base no template
└── AIP-0002.drawio   # Arquivo de diagrama (vazio, para ser editado)
~~~

✅ Criar novo ADR (Registro de Decisão)

#### Linux/macOS (bash):

~~~
./new-adr.sh 0002 0001
~~~

#### Windows (PowerShell):

~~~
.\new-adr.ps1 -Number 0002 -AIPNumber 0001
~~~

Isso criará:

~~~
adr/ADR-0002.md   # Registro vinculado ao AIP-0001
~~~

## 📌 Requisitos
Linux/macOS: bash + sed

Windows: PowerShell 5+ (nativo no Windows 10+)