source $HOME/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme clean

# Tell Antigen that you're done.
antigen apply

# Declare the Aliases
alias dk='docker'
alias dc='docker compose'
alias copy='xsel --input --clipboard'
alias paste='xsel --output --clipboard'
alias l='ls -lha'
alias backup='curl https://raw.githubusercontent.com/joel-muller/config/refs/heads/main/backup/backup_repositories.sh | sh'
alias pdatech='pdate -f "{WD}, dr {DD} {MN} {YYYY}" -l ch'
alias sync='rsync -avz'

# Created by `pipx` on 2025-05-03 20:45:29
export PATH="$PATH:/Users/joeldevelop/.local/bin"

# Declare the Functions for opening things fast
web() {
    zsh $HOME/config/open/open.zsh $1
}

clone() {
    git clone git@github.com:joel-muller/$1.git
}

ch() {
    curl cheat.sh/$1 | less
}
