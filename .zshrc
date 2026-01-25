# .zshrc - Zsh configuration

# Key bindings (emacs style)
bindkey -e

# Source additional config files if they exist
if [ -d ~/.config/zsh ]; then
    for rc in ~/.config/zsh/*; do
        if [ -f "$rc" ]; then
            source "$rc"
        fi
    done
fi

# pnpm
export PNPM_HOME="/home/maxim/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
