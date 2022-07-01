# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### HISTORY SETTINGS ###
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt histallowclobber histignorespace histnostore histreduceblanks sharehistory

### OTHER SETTINGS ###
setopt autocd extendedglob localoptions nobeep nomatch notify

# ALIASES
alias dotconf='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME '

# for sedway and wayne algorithms
alias javacswa='/usr/bin/javac -cp "$HOME/Documents/personal/study/SEDWAY_ALGORITHMS/coursera/partI/assignments/lib/algs4.jar:."'
alias javaswa='/usr/bin/java -cp "$HOME/Documents/personal/study/SEDWAY_ALGORITHMS/coursera/partI/assignments/lib/algs4.jar:."'
alias jdbswa='/usr/bin/jdb -classpath "$HOME/Documents/personal/study/SEDWAY_ALGORITHMS/coursera/partI/assignments/lib/algs4.jar:."'

# for anki-vim to set the default path for decks to '.local/share/ankidecks/'
alias avim='/home/steen/.local/bin/anki-vim --deckpath "$HOME/.local/share/ankidecks/"'

# nvim alias
alias vi='nvim'

# colorize ls output
alias ls='ls --color=auto'
# long listing
alias ll='ls -la'

# keybinding mode: vi
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/steen/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Variable Setup
export XDG_CONIFG_HOME=$HOME/.config/
export XDG_DATA_HOME=$HOME/.local/share/

# zsh-autosuggestions settings
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion history)
export ZSH_AUTOSUGGEST_USE_ASYNC=1

#
export WEECHAT_HOME=/home/steen/.config/weechat

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ZPN - Plugin manager settings
# if [[ ! -f ~/.zpm/zpm.zsh ]]; then
  # git clone --recursive https://github.com/zpm-zsh/zpm ~/.zpm
# fi
# source ~/.zpm/zpm.zsh
