# Homebrew AeonSage Tap

Official Homebrew tap for [AeonSage](https://github.com/Vleonone/Aeonsage) - Sovereign Intelligence Operating System.

[![npm](https://img.shields.io/npm/v/aeonsage?style=flat-square&logo=npm)](https://www.npmjs.com/package/aeonsage)
[![MIT License](https://img.shields.io/badge/license-MIT-FFD700?style=flat-square)](https://github.com/Vleonone/Aeonsage/blob/main/LICENSE)

## Installation

```bash
brew tap Vleonone/aeonsage
brew install aeonsage
```

## Other Installation Methods

| Platform | Command |
|:---------|:--------|
| **npm** | `npm install -g aeonsage` |
| **Chocolatey** (Windows) | `choco install aeonsage` |

## Quick Start

```bash
# Setup wizard
aeonsage onboard --install-daemon

# Start gateway
aeonsage gateway
```

Access Web UI at `http://localhost:18789`

## What Gets Installed

- `aeonsage` CLI - Main command-line interface
- All dependencies via npm
- Configuration directory at `~/.aeonsage`

## Requirements

- macOS or Linux
- Node.js 22+ (installed automatically via Homebrew)

## Updating

```bash
brew upgrade aeonsage
```

## Uninstalling

```bash
brew uninstall aeonsage
brew untap Vleonone/aeonsage
```

## Links

- [Documentation](https://docs.aeonsage.org)
- [GitHub](https://github.com/Vleonone/Aeonsage)
- [npm Package](https://www.npmjs.com/package/aeonsage)
- [Pro Edition](https://pro.aeonsage.org)

## License

MIT
