
# iterm integration


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# PATH. & Exports

export EDITOR=vim

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# setopt HIST_SAVE_NO_DUPS
# setopt INC_APPEND_HISTORY

HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Move to directories without cd
setopt autocd



# Dev tools

export PATH=~/Library/Python/3.10/bin/vd:$PATH


export PATH="$HOME/go/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

# UV tools, - custom jiratui
export PATH="$HOME/.local/bin:$PATH"

# LLVM / LLD / QEMU - operating-system-in-1000-lines
export PATH="$PATH:$(brew --prefix)/opt/llvm/bin"


# ESP IDF

alias get_idf='source ~/.espressif/tools/activate_idf_v5.5.3.sh'


# zephyr
export ZEPHYR_SDK_INSTALL_DIR=$HOME/Desktop/src/try/zephyr/zephyrproject
export CMAKE_PREFIX_PATH=$ZEPHYR_SDK_INSTALL_DIR


# pico sdk
export PICO_SDK_PATH=$HOME/.pico-sdk/sdk/2.2.0


# idb flipper

export PATH="/opt/homebrew/Cellar/idb-companion/1.1.8/bin:$PATH"



# ANDORID

# export JAVA_HOME=$HOME/Library/Java/JavaVirtualMachines/corretto-1.8.0_372/Contents/Home/

export ANDROID_HOME="$HOME/Library/Android/sdk"
# export ANDROID_SDK_R=$ANDROID_HOME
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$PATH:"$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools"


# https://github.com/oz/tz
export TZ_LIST="US/Central;US/Eastern;Asia/Kolkata"


# textra
export TEXTRA_INSTALL="$HOME/.textra"
export PATH="$TEXTRA_INSTALL/bin:$PATH"


# for dv - diff viewer
# export XDG_CONFIG_HOME=~/.config
export XDG_CONFIG_HOME="$HOME/.config"


# export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
# export PATH="/usr/local/gdb/bin:$PATH"

# emscripten
#source "$HOME/Desktop/src/try/emsdk/emsdk_env.sh"

# my customizations



# Aliases


# The most important aliases ever (the only thing I borrowed from OMZ)

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'


alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls -G'
alias lsa='ls -lah'


# git aliases

alias g=git
alias ga='git add'
alias gam='git am'

alias gb='git branch'
alias gbnm='git branch --no-merged'

alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsn='git bisect new'
alias gbso='git bisect old'
alias gbsr='git bisect reset'
alias gbss='git bisect start'

alias gcb='git checkout -b'

alias gcf='git config --list'
alias gcfu='git commit --fixup'
alias gcl='git clone --recurse-submodules'
alias gcld='git clone --depth=1' 

alias gco='git checkout'
alias gcor='git checkout --recurse-submodules'
alias gcount='git shortlog --summary --numbered'

alias gd='git diff'
alias gdw='git diff --word-diff'


alias gf='git fetch'
alias gfa='git fetch --all --tags --prune --jobs=10'
alias gfg='git ls-files | grep'

alias ggpull='git pull origin "$(git rev-parse --abbrev-ref HEAD)"'

# alias glg='git log --stat'
# alias glgg='git log --graph'
# alias glgga='git log --graph --decorate --all'
# alias glgm='git log --graph --max-count=10'
# alias glgp='git log --stat --patch'
alias glo='git log --oneline --decorate'
# alias glod='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"'
# alias glods='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short'
# alias glog='git log --oneline --decorate --graph'
# alias gloga='git log --oneline --decorate --graph --all'
alias glol='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset"'
alias glola='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --all'
# alias glols='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --stat'

alias gpristine='git reset --hard && git clean --force -dfx'

alias grf='git reflog'
alias grh='git reset'
alias grhh='git reset --hard'
alias grhk='git reset --keep'
alias grhs='git reset --soft'
alias groh='git reset origin/$(git rev-parse --abbrev-ref HEAD) --hard'

alias gst='git status'

alias gtv='git tag | sort -V'

alias gwipe='git reset --hard && git clean --force -df'
alias gwt='git worktree'
alias gwta='git worktree add'
alias gwtls='git worktree list'
alias gwtmv='git worktree move'
alias gwtrm='git worktree remove'


# forgit 
export FORGIT_NO_ALIASES=1
[ -f $HOMEBREW_PREFIX/share/forgit/forgit.plugin.zsh ] && source $HOMEBREW_PREFIX/share/forgit/forgit.plugin.zsh


## my custom aliases

alias dnson="sudo networksetup -setdnsservers Wi-Fi 10.0.1.102 && sudo killall -HUP mDNSResponder"
alias dnsoff="sudo networksetup -setdnsservers Wi-Fi empty && sudo killall -HUP mDNSResponde"

# alias vim=nvim

# move nvim distro files to ~/.config/lazyvim/
alias lvim="NVIM_APPNAME=lazyvim /opt/homebrew/bin/nvim"

# alias make="make -j5"
# alias lg=lazygit


alias plantuml="cd ~/Desktop/Data/tools/plantuml && java -jar plantuml-1.2023.4.jar -picoweb:8000"
alias printfiles='for file in *; do [[ -f $file ]] && echo "Filename: $file" && cat "$file" && echo "\n"; done'
alias idb=idb-companion


# alias bjj=blazingjj



# dev env tools

# rbenv
rbenvOn() {
  eval "$(rbenv init - zsh)"
}

# NVM
nvmOn() {
  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  # [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
}


# Python env
pyenvOn() {
  export PYENV_ROOT="$HOME/.pyenv"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
}

# Switch directory
alias dirs='dirs -v'
pd () 
{ 
    if [ -n "$1" ]; then
        pushd "${1/#[0-9]*/+$1}";
    else
        pushd;
    fi > /dev/null
}



# other integrations



## alternatives for omz customizations

# ~/.config/starship.toml
eval "$(starship init zsh)"

# zoxide 
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
export _ZO_FZF_OPTS="
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --tmux bottom,60% --height 60% --border top
  --header 'Press CTRL-Y to copy command into clipboard'"
eval "$(zoxide init zsh)" 


# compaudit
# chmod 755 /usr/local/share/zsh/site-functions/_*

# ZSH_DISABLE_COMPFIX=true
# autoload -Uz compinit && compinit

# source ~/.zsh-plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh


# brew install zsh-vi-mode
# source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# use vim mode instead of default -E emacs
bindkey -v

## override bind key

# vi-end-of-line
bindkey -M viins '^E' end-of-line
bindkey -M vicmd '^E' end-of-line
bindkey -M viins '^A' beginning-of-line
bindkey -M vicmd '^A' beginning-of-line

## to find out current assignment
# bindkey -M viins '^E'

# brew install zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh




# brew install zsh-autosuggestions

autoload -Uz compinit
compinit

# overriding tab doesnt work in all expected cases
# bindkey '^I' autosuggest-accept
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh



# Load org-specific exports
if [ -f "$HOME/.config/zshrc/.org.export.zshrc" ]; then
  source "$HOME/.config/zshrc/.org.export.zshrc"
fi



## FZF
source <(fzf --zsh)

export FZF_CTRL_R_OPTS="
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --layout=reverse
  --header 'Press CTRL-Y to copy command into clipboard'"



# Custom widget for tab, breaks autocomplete
# _tab_autosuggest_or_complete() {
#   if [[ -n "$ZSH_AUTOSUGGEST_BUFFER" ]]; then
#     zle autosuggest-accept
#   else
#     zle expand-or-complete
#   fi
# }

# zle -N _tab_autosuggest_or_complete
# bindkey '^I' _tab_autosuggest_or_complete





# custom helper functions

## lazygit change directory on exit

lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    TCELL_KEYBOARD_PROTOCOL=xterm lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}


# jj + fzf helpers, forgit-style

# ja: pick files from the working copy and split them into their own commit, skips the msg
jja() {
    local files
    files=$(jj diff --name-only | fzf -m --height=40% --layout=reverse --preview 'jj diff {}') || return
    [ -z "$files" ] && return
    echo "$files" | tr '\n' ' ' | xargs jj split -m ""
}

# jb: set a bookmark (fzf-pick existing, or type a new name) to @-
jjb() {
    local name
    name=$(jj bookmark list | awk '{print $1}' | sed 's/:$//' \
        | fzf  --height=40% --layout=reverse --print-query --prompt='bookmark> ' | tail -1) || return
    [ -z "$name" ] && return
    jj bookmark set "$name" -r @-
    echo "set '$name' -> $(jj log -r @- --no-graph -T 'change_id.short()')"
}

# jp: pick a bookmark and push it to remote
jjp() {
    local name
    name=$(jj bookmark list | awk '{print $1}' | sed 's/:$//' \
        | fzf  --height=40% --layout=reverse  --prompt='push> ') || return
    [ -z "$name" ] && return
    jj git push -b "$name"
}



## tmux attach session fzf

ta() {
  local s
  s=$(tmux ls -F '#{session_name}' 2>/dev/null | fzf --prompt='Session> ' --height=40% --reverse) || return
  if [ -n "$TMUX" ]; then tmux switch-client -t "=$s"; else tmux attach -t "=$s"; fi
}

# similar to  as FZF_CTRL_R_OPTS
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac --height "40%" | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

batdiff() {
    git diff --name-only --diff-filter=d | xargs bat --diff
}

fancydiff() {
  git diff | diff-so-fancy
}

rga-fzf() {
  RG_PREFIX="rga --files-with-matches"
  local file
  file="$(
    FZF_DEFAULT_COMMAND="$RG_PREFIX '$1'" \
      fzf --sort --preview="[[ ! -z {} ]] && rga --pretty --context 5 {q} {}" \
        --phony -q "$1" \
        --bind "change:reload:$RG_PREFIX {q}" \
        --preview-window="70%:wrap"
  )" &&
  echo "opening $file" &&
  open "$file"
}




epochconverter() {
  echo "Hit CTRL+D to exit\n"
  local tz="$1"
  local input
  input=$(cat)
  echo

  for value in $(echo "$input" | tr ' ' '\n'); do
    echo "$value - $(date ${tz:+-z "$tz"} -r "$value" "+%F %T %Z")"
  done
}


# timing ohmyzsh startup
timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}





epochize() {
  perl -pe 's{\b(1[6-9][0-9]{8,12})\b}{
    my $x = $1;
    my $s = length($x) > 10 ? int($x / 1000) : $x;
    "$x [" . scalar(localtime($s)) . "]";
  }gex' "$@"
}

alias elnav='f(){ epochize "$@" | lnav; }; f'


## timestamp annotation

epoch-annotate() {
  perl -MPOSIX=strftime -i -pe '
    s{\b(1[0-9]{9,18})\b(?!\s*⟦epoch:)}{
      my $orig = $1;
      my $sec = length($orig) > 10 ? substr($orig, 0, 10) : $orig;
      my $ts = strftime("%Y-%m-%d %H:%M:%S", gmtime($sec));
      "$orig ⟦epoch:$ts⟧";
    }gex;
  ' "$@"
}

epoch-clean() {
  perl -i -pe 's/\s*⟦epoch:[^⟧]*⟧//g' "$@"
}


