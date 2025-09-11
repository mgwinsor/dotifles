source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

antidote load

bindkey -e

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Starship
eval "$(starship init zsh)"

# Atuin
eval "$(atuin init zsh)"

# JDKMAN
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

