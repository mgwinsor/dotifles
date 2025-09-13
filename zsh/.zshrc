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
eval "$(atuin init zsh)"

# JDKMAN
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

