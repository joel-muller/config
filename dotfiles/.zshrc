# Check if command is available
has() {
  command -v "$1" >/dev/null 2>&1
}

source "$HOME/antigen.zsh"

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
has jenv && eval "$(jenv init -)"

# Set up fzf key bindings and fuzzy completion
has fzf && source <(fzf --zsh)

# Add bin scripts to the path
export PATH="$HOME/config/bin:$PATH"
export PATH="$HOME/notes/scripts:$PATH"

# Add Pyenv for multiple python environments
export PYENV_ROOT="$HOME/.pyenv"
[[ -d "$PYENV_ROOT/bin" ]] && export PATH="$PYENV_ROOT/bin:$PATH"
has pyenv && eval "$(pyenv init - zsh)"
has pyenv && eval "$(pyenv virtualenv-init -)"

# Declare the Aliases
has xsel && alias copy='xsel --input --clipboard'
has xsel && alias paste='xsel --output --clipboard'
alias l='ls -lha'
