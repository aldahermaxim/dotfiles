# .zshenv - Environment variables (loaded for all zsh instances)

# Add local bin directories to PATH
typeset -U PATH
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH
