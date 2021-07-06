# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.8
[ -d /usr/share/zsh/site-functions ] && fpath=(/usr/share/zsh/site-functions/ $fpath)
autoload -U compinit; compinit
[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh ] && source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
autoload -U promptinit; promptinit
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
[ -f /usr/share/doc/pkgfile/command-not-found.zsh ] && source /usr/share/doc/pkgfile/command-not-found.zsh
[ -f ~/.aliasrc ] && source ~/.aliasrc
bindkey -e
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line
eval $(thefuck --alias)
[ -f /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme ] && source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
eval "$(zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.zsh/fuzzy-sys/fuzzy-sys.plugin.zsh ] && source ~/.zsh/fuzzy-sys/fuzzy-sys.plugin.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
