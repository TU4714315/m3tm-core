# GhostIntel Experimental Setup

This folder is prepared as a safe experimental integration note for running GhostIntel separately, without mixing its source code directly into the core repository.

## Source Project

Repository: `ruyynn/GhostIntel`

GhostIntel is an API-free OSINT framework that supports username, email, phone, domain, and IP investigations with a local Web UI.

## Recommended Usage

Use it only for lawful OSINT, owned assets, training data, or targets with explicit authorization.

## Local Installation

```bash
git clone https://github.com/ruyynn/GhostIntel.git
cd GhostIntel
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python ghostintel.py -web
```

On Windows PowerShell:

```powershell
git clone https://github.com/ruyynn/GhostIntel.git
cd GhostIntel
python -m venv venv
.\venv\Scripts\Activate.ps1
pip install -r requirements.txt
python ghostintel.py -web
```

Open:

```text
http://localhost:7331
```

## Suggested M3TM Integration Path

```text
M3TM Core
├── GhostIntel as external tool
├── Maigret for username intelligence
├── Holehe for email registration indicators
├── GHunt for Google OSINT
├── SpiderFoot for broader OSINT automation
└── Arabic RTL dashboard layer
```

## Notes

Do not vendor the full GhostIntel source into this repository unless license and maintenance strategy are reviewed. Prefer keeping it as an external dependency or Git submodule during testing.
