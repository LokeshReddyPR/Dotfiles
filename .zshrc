# ==============================================================================
# 1. CORE ENVIRONMENT & SHELL RECOVERY
# ==============================================================================
# Drop back to $HOME if the current directory no longer exists
if ! command pwd >/dev/null 2>&1; then 
  cd "$HOME" 2>/dev/null || cd / 
fi

# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Core Environment Exports
export EDITOR="nvim"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export NVM_DIR="$HOME/.nvm"

# Load Node Version Manager (NVM)
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# ==============================================================================
# 2. HISTORY SEEDING & STYLING SETTINGS
# ==============================================================================
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999

setopt appendhistory
setopt share_history
setopt hist_ignore_space
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_verify

# Custom keybindings (History search using arrow keys)
bindkey '^w' history-search-backward
bindkey '^b' history-search-forward

# ==============================================================================
# 3. ZINIT PLUGIN WORKSPACE
# ==============================================================================
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Stronger folder check to prevent broken/empty Git clones
if [ ! -f "${ZINIT_HOME}/zinit.zsh" ]; then
    mkdir -p "$(dirname "$ZINIT_HOME")"
    git clone https://github.com "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"

# Load frameworks and UI themes
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions


# Load external snippets
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::aws
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# Finalize Zinit engine definitions
autoload -Uz compinit && compinit
zinit cdreplay -q
zinit light Aloxaf/fzf-tab
ZSH_THEME="powerlevel10k/powerlevel10k"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ==============================================================================
# 4. FZF ENGINE & INTEGRATION OVERLAYS
# ==============================================================================
# Initialize core FZF binary hooks
eval "$(fzf --zsh)"

# Path generation commands utilizing 'fd'
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Tab completion generator fallback rules
_fzf_compgen_path() { fd --hidden --exclude .git . "$1" }
_fzf_compgen_dir() { fd --type=d --hidden --exclude .git . "$1" }

# Theme Variables and Global Interface Options
export FZF_DEFAULT_OPTS="
  --height 50%
  --layout=reverse
  --border=rounded
  --margin=1
  --padding=1
  --color=fg:#ebdbb2,bg:#282828,hl:#fabd2f
  --color=fg+:#ebdbb2,bg+:#3c3836,hl+:#fabd2f
  --color=info:#83a598,prompt:#b8bb26,pointer:#8ec07c
  --color=marker:#fe8019,spinner:#fe8019,header:#fb4934,border:#bdae93"

export FZF_TMUX_OPTS=" -p90%,70% "

# Smart Ctrl+T Preview Engine: Separates files/folders, opens inside nvim
export FZF_CTRL_T_OPTS="
  --preview '[ -d {} ] && eza --icons=always --tree --color=always {} | head -200 || bat --theme=gruvbox-dark --color=always -n --line-range :500 {}'
  --bind 'enter:execute(if [ -d {} ]; then cd {}; zsh; else nvim {}; fi)'"

# Alt+C Directory Preview Engine
export FZF_ALT_C_OPTS="--preview 'eza --icons=always --tree --color=always {} | head -200'"

# ==============================================================================
# 5. AUTOMATIC FZF TABS & PREVIEWS
# ==============================================================================
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
#zstyle ':completion:*' menu no

# Forces fzf-tab plugin to use your clean global visual properties
zstyle ':fzf-tab:*' use-fzf-default-opts yes

# Automatically renders live file system trees inside your standard Tab completions
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza --icons=always --tree --color=always $realpath | head -50'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza --icons=always --tree --color=always $realpath | head -50'

# Force Zsh completion to include hidden files/directories in fzf-tab
_comp_options+=(glob_dots)
zstyle ':completion:*' special-dirs true
# EXCLUDE .git folders from ever showing up in tab completions
zstyle ':completion:*' ignored-patterns '(*/)#.git'
# ==============================================================================
# 6. REPLACEMENT ALIASES & COMPACT MACROS
# ==============================================================================
# Modern directory tools
alias ls="eza --icons --grid --group-directories-first -a"
eval "$(zoxide init --cmd cd zsh)"

# Angular CLI completion loader
source <(ng completion script)

# Copy terminal command macro to system clipboard
copy-command(){ 
  echo -n $BUFFER | pbcopy 
  zle -M "Copied to clipboard" 
}
zle -N copy-command
bindkey '^Xc' copy-command
