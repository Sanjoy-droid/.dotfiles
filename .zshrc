# PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.elan/bin:$PATH"
export PATH="$HOME/.opencode/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

# Elan
export ELAN_HOME="$HOME/.elan"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/home/sanjoy/.bun/_bun" ] && source "/home/sanjoy/.bun/_bun"

# fnm
FNM_PATH="/home/sanjoy/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "$(fnm env --shell zsh)"
fi

# Completions — only rebuild once per day
autoload -Uz compinit
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then compinit; else compinit -C; fi

# Plugins
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Starship
eval "$(starship init zsh)"

source ~/.config/zsh/aliases.zsh

alias dotfiles='/usr/bin/git --git-dir=/home/sanjoy/.dotfiles/ --work-tree=/home/sanjoy'
