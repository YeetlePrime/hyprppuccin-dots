source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source ~/cloned/fsh/fast-syntax-highlighting.plugin.zsh
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yeetle/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# ~/.zshrc

# Add starship theming
eval "$(starship init zsh)"
