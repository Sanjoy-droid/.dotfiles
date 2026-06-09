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

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Starship
eval "$(starship init zsh)"

# Plugins
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Catppuccin Mocha - zsh-syntax-highlighting
ZSH_HIGHLIGHT_STYLES[command]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#89b4fa'
ZSH_HIGHLIGHT_STYLES[function]='fg=#89b4fa'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#89b4fa'
ZSH_HIGHLIGHT_STYLES[path]='fg=#cdd6f4,underline'
ZSH_HIGHLIGHT_STYLES[string]='fg=#f9e2af'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#f38ba8'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#f9e2af'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#f9e2af'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#585b70'


source ~/.config/zsh/aliases.zsh

# Tmux window name = parent/current directory
function chpwd() {
  [[ -z "$TMUX" ]] && return

  local p="$PWD"
  local name="$(basename "$(dirname "$p")")/$(basename "$p")"

  tmux rename-window "$name" 2>/dev/null
}

# Run once for the initial directory too
chpwd
alias brave="brave-browser --profile-directory=\"Profile 4\""
