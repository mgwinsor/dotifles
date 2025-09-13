# --- General Settings ---
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi


# --- Language & SDK Paths ---
# Rust
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

# Go
if command -v go >/dev/null 2>&1; then
  export GOPATH="$HOME/go"
  export PATH="$GOPATH/bin:$PATH"
fi

# SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"

# User-local binaries
export PATH="$HOME/.local/bin:$PATH"


# --- Local Overrides & Secrets ---
[ -f "${ZDOTDIR:-$HOME}/.zsh_secrets" ] && source "${ZDOTDIR:-$HOME}/.zsh_secrets"
