# Created by newuser for 5.8
fpath=(/usr/share/zsh/site-functions/ $fpath)
autoload -U compinit; compinit
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
autoload -U promptinit; promptinit
prompt spaceship
setopt auto_cd
setopt correct
function chpwd() { exa }
setopt nolistbeep
# history
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*:(processes|jobs)' menu yes select=2
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' '+m:{A-Z}={a-z}'
source /usr/share/doc/pkgfile/command-not-found.zsh
source ~/.aliasrc
bindkey -e
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-e' edit-command-line

