# Initialize Antidote
zsh_plugins=${ZDOTDIR:-$HOME}/.zsh_plugins
[[ -f ${zsh_plugins}.txt ]] || touch ${zsh_plugins}.txt
fpath=($(brew --prefix)/opt/antidote/share/antidote/functions $fpath)
autoload -Uz antidote
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
	antidote bundle <${zsh_plugins}.txt >|${zsh_plugins}.zsh
fi
source ${zsh_plugins}.zsh

# Load the zsh completion function
autoload -U compinit && compinit

# source custom files
[ -f "${ZDOTDIR:-$HOME}/.zsh_aliases" ] && source "${ZDOTDIR:-$HOME}/.zsh_aliases"

# Set emacs mode
bindkey -e

# Carapace
if command -v carapace &> /dev/null; then
	export CARAPACE_BRIDGES='zsh,bash'
	zstyle ':completion:*:git:*' group-order 'main commands' 'alias commands' 'external commands'
	source <(carapace _carapace)
fi

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Starship
source <(starship init zsh)

# Zoxide
source <(zoxide init zsh)

# Atuin
[ -f "${ZDOTDIR:-$HOME}/.atuin/bin/env" ] && source "${ZDOTDIR:-$HOME}/.atuin/bin/env"
source <(atuin init zsh)

# Direnv
source <(direnv hook zsh)

# JDKMAN
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

