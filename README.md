# Configuration Files

## Summary

My dotfiles -- managed by GNU Stow.

## Installation

My NeoVim config and the tmux TPM are added as submodules. To clone this repo
with submodules, use the following command:

```bash
git clone --recurse-submodules git@github.com:mgwinsor/dotifles.git
```

## Usage

Run the `stow` command from the `dotfiles` directory. For example, to create
symlink for NeoVim:

```bash
stow nvim
```

For Tmux, run `prefix` + `I` to install packages once TPM is installed.
