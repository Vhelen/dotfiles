# Path to your Oh My Zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="af-magic"

DISABLE_MAGIC_FUNCTIONS=true

# Plugins
plugins=(git colored-man-pages direnv docker extract fzf mise npm zsh-autosuggestions zsh-completions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

NEWLINE=$'\n'
DATE='`date +"%d-%b-%y %T"`'
PS1="${FG[237]}\${(l.\$(afmagic_dashes)..-.)}%{$reset_color%}${FG[032]}┌──(%{$fg_bold[green]%}${USERNAME:u}%{$reset_color%}${FG[032]})─[%{$reset_color%}%{$fg[red]%}$DATE%{$reset_color%}${FG[032]} - %{$reset_color%}%{$fg[blue]%}`ip addr show eth0 | awk '$1 == "inet" {gsub(/\/.*$/, "", $2); print $2}'`%{$reset_color%}${FG[032]}]%{$reset_color%}${NEWLINE}${FG[032]}└── %~\$(git_prompt_info)\$(hg_prompt_info) ${FG[105]}%(!.#.»)%{$reset_color%} "
RPS1=""

source ~/aliases
