# Configure vcs_info for Git
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '%F{yellow}[%b]%f'
zstyle ':vcs_info:git:*' actionformats '%F{yellow}[%b|%a]%f'
precmd() { vcs_info }
setopt prompt_subst
# %*  = current time (HH:MM:SS)
# %1~ = current directory only
PROMPT='%F{cyan}%*%f %F{green}%1~%f ${vcs_info_msg_0_} %# '

# Aliases
alias gpo='git push origin'

