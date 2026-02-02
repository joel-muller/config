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
antigen bundle paulirish/git-open

# Load the theme.
antigen theme clean

# Tell Antigen that you're done.
antigen apply

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Created by `pipx` on 2025-10-03 11:17:45
export PATH="$PATH:/Users/joel/.local/bin"

# For pyenv
#export PYENV_ROOT="$HOME/.pyenv"
#[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init - zsh)"
#eval "$(pyenv virtualenv-init -)"

# Declare the Aliases
alias copy='xsel --input --clipboard'
alias paste='xsel --output --clipboard'
alias l='ls -lha'

# Clone fast for github
clone() {
    git clone git@github.com:joel-muller/$1.git
}

note() {
    local file
    file=$(find ~/notes -type f -not -path "*/.git/*" | sed "s|$HOME/notes/||" | fzf)
    [[ -n $file ]] && vim "$HOME/notes/$file"
}

hist() {
    local cmd
    cmd=$(history | tail -n 100 | fzf --reverse --prompt="History> " | sed 's/^[ ]*[0-9]*[ ]*//')
    [[ -n $cmd ]] && print -z "$cmd"
}

getf() {
    local file
    file=$(find ~/files \( -type l -o -type f \) -not -path "*/.git/*" -not -name '*.DS_Store' | sed "s|$HOME/files/||" | fzf)
    [[ -n $file ]] && rsync -avL "$HOME/files/$file" "$HOME/Desktop"
}

getd() {
    local file
    file=$(find ~/files -type d -not -path "*/.git/*" | sed "s|$HOME/files/||" | fzf)
    [[ -n $file ]] && rsync -avL "$HOME/files/$file" "$HOME/Desktop"
}
