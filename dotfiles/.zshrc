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

# Declare the Aliases
alias copy='xsel --input --clipboard'
alias paste='xsel --output --clipboard'
alias l='ls -lha'
alias cheat='sh ~/config/cheat.sh'

# Scripts
alias baa='sh $HOME/hslu-baa-server/tmux.sh'
alias vmdevops="ssh -i .ssh/devopsvmjoel 'labadmin@srv-018.devops.ls.eee.intern'"
alias vmdevopstail="ssh -i .ssh/devopsvmjoel 'labadmin@100.107.177.70'"
alias wq='sh $HOME/world-quiz/tmux.sh'
alias wlog='vim $HOME/notes/Work_Log.md'
alias wjor='vim $HOME/notes/Workjournal.md'

# Created by `pipx` on 2025-10-03 11:17:45
export PATH="$PATH:/Users/joel/.local/bin"

# For pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"

# Clone fast for github
clone() {
    git clone git@github.com:joel-muller/$1.git
}

web() {
    zsh ~/config/open.zsh $1 | pbcopy
}
