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

# Homebrew path apple silicon
export PATH="/opt/homebrew/bin:$PATH"

# Add jenv path for multiple java versions
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Add pipx path for global python packages
export PATH="$PATH:/Users/joel/.local/bin"

# Add Pyenv for multiple python environments
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"

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

ch() {
    if [[ -n $2 && -e "$HOME/cheat/cli/$1/$2.txt" ]]; then
        vim "$HOME/cheat/cli/$1/$2.txt"
    elif [[ -n $1 && -z $2 && -e "$HOME/cheat/cli/$1.txt" ]]; then
        vim "$HOME/cheat/cli/$1.txt"
    else
        local file
        file=$(find ~/cheat/cli -type f -not -path "*/.git/*" | sed "s|$HOME/cheat/cli/||" | sed 's|\.txt$||'| fzf)
        [[ -n $file ]] && vim "$HOME/cheat/cli/$file.txt"
    fi
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
