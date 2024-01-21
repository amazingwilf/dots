export EDITOR=nvim
export VISUAL=nvim

alias pacman='doas pacman'
alias search='doas pacman -Qs'
alias remove='doas pacman -Rcns'
alias pinstall='doas pacman -S'
alias linstall='doas pacman -U '
alias update='doas pacman -Syyu'
alias clrcache='doas pacman -Scc'
alias orphans='doas pacman -Rns $(pacman -Qtdq)'
alias akring='doas pacman -Sy archlinux-keyring --noconfirm'
alias info='pacman -Si'
alias infox='pacman -Sii'

alias ..='cd ..'
alias ...='cd ../../'

alias cdc='cd $HOME/.config'
alias cdd='cd $HOME/.local/src/dwm'
alias cds='cd $HOME/.local/src'

alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l='exa -lah --color=always --group-directories-first --icons' # tree listing

alias na='$EDITOR $HOME/.oh-my-zsh/custom/aliases.zsh'
alias nb='$EDITOR $HOME/.bashrc'
alias nd='$EDITOR $HOME/.local/src/dwm/config.def.h'
alias nx='$EDITOR $HOME/.Xresources'

alias c='clear'
alias h='cd $HOME'
alias s='source $HOME/.zshrc'

alias home='cd $HOME'
alias etc='cd /etc/'
alias music='cd $HOME/Music'
alias vids='cd $HOME/Videos'
alias conf='cd $HOME/.config'
alias desk='cd $HOME/Desktop'
alias pics='cd $HOME/Pictures'

alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push origin master'
alias gs='git status'

alias dlds='cd $HOME/Downloads'
alias docs='cd $HOME/Documents'
alias src='cd $HOME/.local/src'
alias ddwm='cd $HOME/suckless/dwm'
alias omz='cd $HOME/.oh-my-zsh'
alias suck='cd $HOME/suckless'
alias lbin='cd $HOME/.local/bin'

alias merge='xrdb -merge $HOME/.Xresources'
alias mall='make clean && make && doas make install'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
