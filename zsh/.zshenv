# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Environment variables
export SDKMAN_DIR="$HOME/.sdkman"
export GOPATH="$HOME/go"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# PATH additions
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Rust
[[ -f "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"

# Secrets
[[ -f "${ZDOTDIR:-$HOME}/.zsh_secrets" ]] && source "${ZDOTDIR:-$HOME}/.zsh_secrets"
