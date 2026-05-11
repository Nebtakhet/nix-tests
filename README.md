# nix-tests

![Nix](https://img.shields.io/badge/Nix-%2300A3C4?style=flat&logo=nixos)

A tiny playground for learning Nix, flakes, and reproducible development environments.

## Why this repo

This repository is my hands-on lab for exploring Nix: experimenting with flakes, creating portable dev shells, and testing build setups without touching my main system. Each subfolder is a focused experiment you can open and run.

## Quick start

- Ensure you have Nix installed and flakes enabled (see Requirements).
- Enter an experiment's development shell (example):

```bash
# from the flake directory
cd nix-c-test/C00
nix develop
# or run a single command inside the flake's dev shell
nix develop --command bash -c './main'
```

## What's inside

- `nix-c-test/C00/` — a minimal flake demonstrating a C build and dev shell.
- Other folders: small, self-contained experiments (C/C++, Python, Haskell, toolchain tests).

## Goals

- Learn the Nix language and ecosystem
- Understand and use flakes for reproducible workflows
- Build portable development shells for different languages
- Try build and packaging experiments safely

## Requirements

- Nix (with flakes enabled)

Enable flakes (one-time setup):

```bash
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
```

## Contributing & Notes

- These experiments are intentionally small and disposable — feel free to copy, adapt, or suggest improvements.

## License

This project follows the license in the repository root.
