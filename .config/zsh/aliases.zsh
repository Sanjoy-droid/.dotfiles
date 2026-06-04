

# ~/.oh-my-zsh/custom/aliases.zsh


# tmux
alias t='tmux'

# nvim
alias n='nvim'

# prisma
alias pr='npx prisma migrate reset'
alias prf='npx prisma migrate reset -f'
alias pg='npx prisma generate'

#npm
alias dev='npm run dev'
alias build='npm run build'

#local npx commands

loc() {
  FEATURE101_BASE_URL=http://localhost:3000 npx feature101 add "$1"
}

# dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias dlazygit='lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME'
