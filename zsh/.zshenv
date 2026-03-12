# Homebrew
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"
fpath=("/opt/homebrew/share/zsh/site-functions" $fpath)
eval "$(/usr/bin/env PATH_HELPER_ROOT="/opt/homebrew" /usr/libexec/path_helper -s)"
[ -z "${MANPATH-}" ] || export MANPATH=":${MANPATH#:}"
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}"

# Environment variables
export SDKMAN_DIR="$HOME/.sdkman"
export GOPATH="$HOME/go"

export EDITOR='nvim'
[[ -n $SSH_CONNECTION ]] && export EDITOR='vim'

# PATH
path_dirs=(
  "$HOMEBREW_PREFIX/bin"
  "$HOMEBREW_PREFIX/sbin"
  "$GOPATH/bin"
  "$HOME/.cargo/bin"
  "$HOME/.local/bin"
)

export PATH="${(j/:/)path_dirs}:$PATH"
unset path_dirs

# Secrets
[[ -f "${ZDOTDIR:-$HOME}/.zsh_secrets" ]] && source "${ZDOTDIR:-$HOME}/.zsh_secrets"
