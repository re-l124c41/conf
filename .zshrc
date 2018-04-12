
#keybindings vi-like
bindkey -v
bindkey "^P" vi-up-line-or-history
bindkey "^N" vi-down-line-or-history

bindkey "^[[1~" vi-beginning-of-line   # Home
bindkey "^[[4~" vi-end-of-line         # End
bindkey '^[[2~' beep                   # Insert
bindkey '^[[3~' delete-char            # Del
bindkey '^[[5~' vi-backward-blank-word # Page Up
bindkey '^[[6~' vi-forward-blank-word  # Page Down

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search

# Initialize colors.
autoload -U colors
colors

# Allow for functions in the prompt.
setopt prompt_subst

autoload -Uz vcs_info

zstyle ':vcs_info:*' actionformats \
   '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f'
zstyle ':vcs_info:*' formats       \
   '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f'
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

zstyle ':vcs_info:*' enable git cvs svn

# or use pre_cmd, see man zshcontrib
get_vcs_info() {
   vcs_info 2>/dev/null
   if [ -n "$vcs_info_msg_0_" ]; then
      echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
   fi
}

function zle-line-init zle-keymap-select {
   PS1=$'┌[%B%n%b@%m:%~/]-[/dev/%y]-[$(get_vcs_info)]
└[%#:%L]-[${${KEYMAP/vicmd/NRM}/(main|viins)/INS}]> '
   zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

autoload -U promptinit
promptinit

# Lines configured by zsh-newuser-install
HISTFILE=~/.zshistfile
HISTSIZE=3000
SAVEHIST=6000

#completion setting
#For autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select

##init completion settings
#zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
#zstyle ':completion:*' completions 1
#zstyle ':completion:*' glob 1
#zstyle ':completion:*' substitute 1
#zstyle ':completion:*' word true
#zstyle :compinstall filename '/home/re-l124c41/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#add gem dir to PATH
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
