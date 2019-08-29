
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

#TODO: FIXME
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey -- "^[[A"   up-line-or-beginning-search
bindkey -- "^[[B" down-line-or-beginning-search

# Inialize colors.
autoload -U colors
colors

# 0 -> black
# 1 -> red
# 2 -> green
# 3 -> yellow
# 4 -> blue

## Prompt ##
#
# Allow for functions in the prompt.
setopt prompt_subst

autoload -Uz vcs_info

zstyle ':vcs_info:*' actionformats \
   '%F{4}-<[%F{4}%F{1}%f%s%F{1}]>%F{4}-%F{4}<[%F{1}%b%F{1}|%F{1}%a%F{1}]>%f'
zstyle ':vcs_info:*' formats       \
   '%F{4}-<[%f%s%F{4}]>%F{4}-%F{4}<[%F{4}%b%F{4}]>%f'
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{4}:%F{4}%r'

zstyle ':vcs_info:*' enable git cvs svn

# or use pre_cmd, see man zshcontrib
get_vcs_info() {
   vcs_info 2>/dev/null
   if [ -n "$vcs_info_msg_0_" ]; then
      echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
   fi
}

function zle-line-init zle-keymap-select {
   PS1=$'┌<[%n%b@%m:%~/]>-<[/dev/%y]>$(get_vcs_info)
└<[%#:%L]>-<[${${KEYMAP/vicmd/NRM}/(main|viins)/INS}]> '
   zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

autoload -U promptinit
promptinit

## History configuration ##

HISTFILE=~/.zshistfile
HISTSIZE=3000
SAVEHIST=6000

setopt append_history           # append
setopt hist_ignore_all_dups     # no duplicate
unsetopt hist_ignore_space      # ignore space prefixed commands
setopt hist_reduce_blanks       # trim blanks
setopt hist_verify              # show before executing history commands
setopt inc_append_history       # add commands as they are typed, don't wait until shell exit 
setopt share_history            # share hist between sessions
setopt bang_hist                # !keyword

## Completion setting ##
zmodload -i zsh/complist        
setopt hash_list_all            # hash everything before completion
setopt completealiases          # complete alisases
setopt always_to_end            # when completing from the middle of a word, move the cursor to the end of the word    
setopt complete_in_word         # allow completion from within a word/phrase
setopt correct                  # spelling correction for commands
setopt list_ambiguous           # complete as much of a completion until it gets ambiguous.

zstyle ':completion::complete:*' use-cache on               # completion caching, use rehash to clear
zstyle ':completion:*' cache-path ~/.zsh/cache              # cache path
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'   # ignore case
zstyle ':completion:*' menu select=2                        # menu if nb items > 2
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}       # colorz !
zstyle ':completion:*::::' completer _expand _complete _correct _ignored _approximate # list of completers to use

# sections completion !
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format $'\e[00;34m%d'
zstyle ':completion:*:messages' format $'\e[00;31m%d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:manuals' separate-sections true

zstyle ':completion:*:processes' command 'ps -au$USER'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=29=34"
zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*' force-list always
users=(re-l124c41 root)           # because I don't care about others
zstyle ':completion:*' users $users

autoload -Uz compinit
compinit


## Various ## 
setopt auto_cd                  # if command is a path, cd into it
#setopt auto_remove_slash       # self explicit
#setopt chase_links             # resolve symlinks
setopt correct                  # try to correct spelling of commands
setopt extended_glob            # activate complex pattern globbing
#setopt glob_dots               # include dotfiles in globbing
#setopt print_exit_value        # print return value if non-zero
unsetopt beep                   # no bell on error
unsetopt bg_nice                # no lower prio for background jobs
unsetopt clobber                # must use >| to truncate existing files
unsetopt hist_beep              # no bell on error in history
unsetopt hup                    # no hup signal at shell exit
unsetopt ignore_eof             # do not exit on end-of-file
unsetopt list_beep              # no bell on ambiguous completion
unsetopt rm_star_silent         # ask for confirmation for `rm *' or `rm path/*'
print -Pn "\e]0; %n@%M: %~\a"   # terminal title

#add gem dir to path
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

# export JAVA_HOME
source /etc/environment
