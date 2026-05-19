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

# Local user binaries
export PATH="$HOME/.local/bin:$PATH"

# Homebrew path (Apple Silicon)
export PATH="/opt/homebrew/bin:$PATH"

# jenv for managing Java versions
export PATH="$HOME/.jenv/bin:$PATH"
has jenv && eval "$(jenv init -)"

# fzf key bindings and completion
has fzf && source <(fzf --zsh)

# Personal scripts
export PATH="$HOME/config/bin:$PATH"
export PATH="$HOME/notes/scripts:$PATH"

# fnm for Node.js versions
has fnm && eval "$(fnm env --use-on-cd --shell zsh)"

# pyenv for Python versions and virtualenvs
export PYENV_ROOT="$HOME/.pyenv"
[[ -d "$PYENV_ROOT/bin" ]] && export PATH="$PYENV_ROOT/bin:$PATH"
has pyenv && eval "$(pyenv init - zsh)"
has pyenv && eval "$(pyenv virtualenv-init -)"

# Shell aliases
has xsel && alias copy='xsel --input --clipboard'
has xsel && alias paste='xsel --output --clipboard'
alias l='ls -lha'
