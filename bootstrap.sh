#!/bin/bash

# Sets up the environment by installing dependencies.
# This script is idempotent.

set -e

TPM_DIR="$HOME/.tmux/plugins/tpm"
CATPPUCCIN_DIR="$HOME/.config/tmux/plugins/catppuccin/tmux'"

if ! command -v brew &> /dev/null; then
	echo "📦 Installing Homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	echo "✅ Homebrew is already installed."
fi

if ! command -v antidote &> /dev/null; then
	echo "📦 Installing Antidote..."
	brew install antidote
else
	echo "✅ Antidote is already installed."
fi

if [ ! -d "$TPM_DIR" ]; then
	echo "📦 Installing Tmux Plugin Manager (TPM)..."
	mkdir -p "$(dirname "$TPM_DIR")"
	git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
else
	echo "✅ Tmux Plugin Manager (TPM) is already installed."
fi

if [ ! -d "$CATPPUCCIN_DIR" ]; then
	echo "📦 Installing Tmux Catppuccin Theme..."
	mkdir -p "$HOME"/.config/tmux/plugins/catppuccin
	git clone -b v2.1.3 https://github.com/catppuccin/tmux.git "$CATPPUCCIN_DIR"
else
	echo "✅ Tmux Catppuccin Theme is already installed."
fi
