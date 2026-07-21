#!/usr/bin/env bash
#
# Bootstrap a fresh macOS machine from your dotfiles.
#
# Once this file is committed to your repo, run on a new Mac with:
#   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/dotfiles/main/install.sh)"
#
set -euo pipefail

# ─────────────────────────────────────────────────────────────
#  CONFIG — edit this one line
# ─────────────────────────────────────────────────────────────
DOTFILES_REPO="https://github.com/LokeshReddyPR/Dotfiles.git"
DOTFILES_DIR="$HOME/dotfiles"

# ─────────────────────────────────────────────────────────────
#  logging helpers
# ─────────────────────────────────────────────────────────────
info() { printf "\033[1;34m==>\033[0m %s\n" "$*"; }
ok() { printf "\033[1;32m  ✓\033[0m %s\n" "$*"; }
warn() { printf "\033[1;33m  !\033[0m %s\n" "$*"; }

# ─────────────────────────────────────────────────────────────
#  1. Xcode Command Line Tools  (gives you git + compilers)
# ─────────────────────────────────────────────────────────────
if xcode-select -p >/dev/null 2>&1; then
  ok "Xcode Command Line Tools already installed"
else
  info "Installing Xcode Command Line Tools — a GUI prompt will appear…"
  xcode-select --install || true
  # block until the (asynchronous, GUI) install actually finishes
  until xcode-select -p >/dev/null 2>&1; do sleep 15; done
  ok "Xcode Command Line Tools installed"
fi

# ─────────────────────────────────────────────────────────────
#  2. Homebrew
# ─────────────────────────────────────────────────────────────
if ! command -v brew >/dev/null 2>&1; then
  info "Installing Homebrew…"
  NONINTERACTIVE=1 /bin/bash -c \
    "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  ok "Homebrew already installed"
fi

# put brew on PATH for the rest of this run (Apple Silicon → /opt, Intel → /usr/local)
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -x /usr/local/bin/brew ]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# ─────────────────────────────────────────────────────────────
#  3. Clone (or update) the dotfiles repo
# ─────────────────────────────────────────────────────────────
if [ -d "$DOTFILES_DIR/.git" ]; then
  info "Dotfiles already present — pulling latest…"
  git -C "$DOTFILES_DIR" pull --ff-only || warn "Could not fast-forward; continuing"
else
  info "Cloning dotfiles → $DOTFILES_DIR"
  git clone "$DOTFILES_REPO" "$DOTFILES_DIR"
fi
ok "Dotfiles ready"

# ─────────────────────────────────────────────────────────────
#  4. Install packages
#     Prefer a Brewfile in the repo; fall back to a default set.
# ─────────────────────────────────────────────────────────────
if [ -f "$DOTFILES_DIR/Brewfile" ]; then
  info "Installing from Brewfile…"
  brew bundle --file="$DOTFILES_DIR/Brewfile"
else
  warn "No Brewfile found — installing a default package set"
  brew tap FelixKratz/formulae # sketchybar
  brew tap BarutSRB/tap        # omniwm
  brew install stow git eza zoxide starship neovim vim nushell fzf ripgrep fd sketchybar omniwm
  brew install --cask wezterm ghostty font-meslo-lg-nerd-font
fi
ok "Packages installed"

# ─────────────────────────────────────────────────────────────
#  5. Create the symlinks with GNU stow
#     Done BEFORE oh-my-zsh so that ~/.zshrc is YOUR symlink,
#     not a template the oh-my-zsh installer would drop in.
# ─────────────────────────────────────────────────────────────
info "Stowing dotfiles…"
cd "$DOTFILES_DIR"
if stow -R -v . 2>&1; then
  ok "Symlinks created"
else
  warn "Stow reported conflicts. Inspect with:  cd $DOTFILES_DIR && stow -nv ."
fi

# ─────────────────────────────────────────────────────────────
#  6. oh-my-zsh  (unattended; keep the .zshrc we just stowed)
# ─────────────────────────────────────────────────────────────
if [ -d "$HOME/.oh-my-zsh" ]; then
  ok "oh-my-zsh already installed"
else
  info "Installing oh-my-zsh…"
  RUNZSH=no KEEP_ZSHRC=yes CHSH=no \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    "" --unattended --keep-zshrc
fi

# ─────────────────────────────────────────────────────────────
#  7. Powerlevel10k + plugins into the oh-my-zsh custom dir
#     (these must match what your .zshrc references)
# ─────────────────────────────────────────────────────────────
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

clone_if_missing() { # $1 = repo url, $2 = destination
  if [ -d "$2" ]; then
    ok "$(basename "$2") already present"
  else
    info "Cloning $(basename "$2")…"
    git clone --depth=1 "$1" "$2"
  fi
}

clone_if_missing https://github.com/romkatv/powerlevel10k.git \
  "$ZSH_CUSTOM/themes/powerlevel10k"
clone_if_missing https://github.com/zsh-users/zsh-autosuggestions.git \
  "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
clone_if_missing https://github.com/zsh-users/zsh-syntax-highlighting.git \
  "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"

# ─────────────────────────────────────────────────────────────
#  8. Make zsh the default shell (macOS usually already is)
# ─────────────────────────────────────────────────────────────
if [ "${SHELL:-}" != "$(command -v zsh)" ]; then
  info "Setting zsh as default shell…"
  chsh -s "$(command -v zsh)" || warn "Could not change shell automatically"
fi

echo
ok "All done — open a new terminal window to start fresh."
info "If the Powerlevel10k prompt looks off, run:  p10k configure"
