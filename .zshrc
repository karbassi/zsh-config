# load the XDG basedirs and aliases
XDG_CONFIG_HOME="$(dirname ${(%):-%x})/.."
source "$XDG_CONFIG_HOME/sh/xdg.sh"

# Load Oh My Zsh config
source "$XDG_CONFIG_HOME/zsh/.zshrc-oh-my-zsh"

export HISTFILE="$XDG_CONFIG_HOME/zsh/.zsh_history"
export HISTSIZE=10000000
export SAVEHIST=10000000

setopt BANG_HIST					# Treat the '!' character specially during expansion.
#setopt EXTENDED_HISTORY			# Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY			# Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY				# Share history between all sessions.
#setopt HIST_EXPIRE_DUPS_FIRST		# Expire duplicate entries first when trimming history.
#setopt HIST_IGNORE_DUPS			# Don't record an entry that was just recorded again.
#setopt HIST_IGNORE_ALL_DUPS		# Delete old recorded entry if new entry is a duplicate.
#setopt HIST_FIND_NO_DUPS			# Do not display a line previously found.
setopt HIST_IGNORE_SPACE			# Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS			# Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS			# Remove superfluous blanks before recording entry.
setopt HIST_VERIFY					# Don't execute immediately upon history expansion.
#setopt HIST_BEEP					# Beep when accessing nonexistent history.


# Fix delete forward
bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char


# load local file if it exists
[ -f "$XDG_CONFIG_HOME/zsh/local" ] && source "$XDG_CONFIG_HOME/zsh/local"


# # Source zsh-specific config
# source "$XDG_CONFIG_HOME/zsh/shopt.zsh"
# source "$XDG_CONFIG_HOME/zsh/completion.zsh"
# source "$XDG_CONFIG_HOME/zsh/keybindings.zsh"
# source "$XDG_CONFIG_HOME/zsh/prompt.zsh"
#
# # Source common shell config (requires bash completion from above)
# source "$XDG_CONFIG_HOME/sh/rc.sh"
#
# # Load Aliases, plugins, and Functions
# [[ -d "$XDG_CONFIG_HOME/zsh/functions/" ]] && for f in "$XDG_CONFIG_HOME/zsh/functions/*"; do . "$f"; done
# if [[ -d "$XDG_CONFIG_HOME/zsh/plugins/" ]]; then
#     for f in "$XDG_CONFIG_HOME/zsh/plugins/"*; do
#         . "$f"/*.zsh
#     done
# fi
# [[ -f "$XDG_CONFIG_HOME/zsh/aliases.sh" ]] && .  "$XDG_CONFIG_HOME/zsh/aliases.sh"
# [[ -f "$XDG_CONFIG_HOME/zsh/saliases.sh" ]] && .  "$XDG_CONFIG_HOME/zsh/saliases.sh"

# bun completions
[ -s "/Users/ali/.bun/_bun" ] && source "/Users/ali/.bun/_bun"
