# .zshrc - Zsh configuration

# ----------------------------------------------------------------------------
# Key Bindings
# ----------------------------------------------------------------------------
# Use emacs-style key bindings (Ctrl+A for beginning of line, etc.)
bindkey -e

# ----------------------------------------------------------------------------
# Additional Configuration Files
# ----------------------------------------------------------------------------
# Source all configuration files from ~/.config/zsh/ directory
if [ -d ~/.config/zsh ]; then
  for rc in ~/.config/zsh/*; do
    if [ -f "$rc" ]; then
      source "$rc"
    fi
  done
fi

# ----------------------------------------------------------------------------
# pnpm Package Manager
# ----------------------------------------------------------------------------
# Add pnpm global bin directory to PATH
export PNPM_HOME="/home/maxim/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# ----------------------------------------------------------------------------
# Shell Startup Display
# ----------------------------------------------------------------------------
# Display system information on terminal launch
sleep 0.05 # Small delay ensures terminal is fully initialized
fastfetch



#-----------------------------------------------------------------------------
# Android SDK
export ANDROID_HOME=$HOME/.android-sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
