source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

antidote load

# source custom files
[ -f "${ZDOTDIR:-$HOME}/.zsh_aliases" ] && source "${ZDOTDIR:-$HOME}/.zsh_aliases"

# set emacs mode
bindkey -e

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Starship
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# Atuin
[ -f "${ZDOTDIR:-$HOME}/.atuin/bin/env" ] && source "${ZDOTDIR:-$HOME}/.atuin/bin/env"
eval "$(atuin init zsh)"

# Direnv
eval "$(direnv hook zsh)"

# JDKMAN
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

