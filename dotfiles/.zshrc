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

# Shellscripts
export PATH="$HOME/.local/bin:$PATH"

# Homebrew path apple silicon
export PATH="/opt/homebrew/bin:$PATH"

# Add jenv path for multiple java versions
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Add pipx path for global python packages
export PATH="$HOME/.local/bin:$PATH"

# Add bin scripts to the path
export PATH="$HOME/config/bin:$PATH"
export PATH="$HOME/notes/scripts:$PATH"

# Add Pyenv for multiple python environments
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"

# Declare the Aliases
alias copy='xsel --input --clipboard'
alias paste='xsel --output --clipboard'
alias l='ls -lha'
