# tools/
Helper scripts for maintaining and publishing the SWOT reaches & gauges map.

## Files
- `publish.sh`: Regenerates `docs/index.html` using the data + script and pushes the change to the current branch.

## Usage
From repo root:
```bash
bash tools/publish.sh
```
Set `PYTHON_BIN` env var to use a specific interpreter:
```bash
PYTHON_BIN=python3.11 bash tools/publish.sh
```
