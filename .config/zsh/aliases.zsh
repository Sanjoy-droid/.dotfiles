
# zoxide
eval "$(zoxide init zsh)"

# fzf - fuzzy search files/history
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

# fd / bat / eza naming fix (ubuntu ships these under different binary names)
alias fd='fdfind'
alias bat='batcat'

# eza - better ls
alias ls='eza --icons'
alias ll='eza -la --icons'
alias lt='eza --tree --icons --level=2'

# ripgrep shortcut
alias grep='rg'

# tmux
alias t='tmux'

# nvim
alias n='nvim'

# prisma
alias pr='npx prisma migrate reset'
alias prf='npx prisma migrate reset -f'
alias pg='npx prisma generate'

#npm
alias dev='NODE_OPTIONS="--max-old-space-size=1024" npm run dev'
alias build='npm run build'

#local 

loc() {
  FEATURE101_BASE_URL=http://localhost:3000 npx feature101 add "$1"
}

#prod 
prod() {
  npx feature101@latest add "$1"
}

#shad
shad() {
  npx shadcn@latest add "$@"
}

# dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias dlazygit='lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME'
