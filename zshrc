# zshrc
# Check if we are in interactive shell
[[ $- == *i* ]] || exit
[[ -o interactive ]] || exit

## cleaning up (usefull when re-sourcing .zshrc)
#unhash -am "*"
#unhash -dm "*"
#unhash -fm "*"
#unhash -sm "*"
#
#
## Function to run upon exit of shell
#function _exit() {
#    echo -e "\e[0;33mzsh \e[1;31mexited\e[0m."
#}
#trap _exit 0
# 
## don't complain about missing logs functions
## ( although this means that something is wrong)
#if (( ! $+functions[zshrc_load_error] ));
#then
#  zshrc_load_error() {}
#fi
#if (( ! $+functions[zshrc_load_status] ));
#then
#  zshrc_load_status() {}
#fi
#
## Check version
#autoload is-at-least
#is-at-least 4.0.2 || \
#print "WARNING: YOU NEED AT LEAST ZSH 4.0.2 -- THERE WILL BE ERRORS\n"
#zshrc_load_status using zsh $ZSH_VERSION
#
## Use hard limits, except for a smaller stack and no core dumps
#unlimit
#limit stack 8192
#limit core 0
#limit -s

# history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
DIRSTACKSIZE=10

#unset MAILCHECK
#
#export PATH="/usr/lib/ccache/bin:/usr/lib/distcc/bin:/sbin:/usr/sbin:${PATH}"
## No duplicate in PATH
#typeset -U PATH cdpath manpath fpath
#zshrc_load_status no duplicate in paths
#
## ignore .o .class files when attempting completion
#fignore=(.o .class ~)
#zshrc_load_status ignore files when complete
#
### don't treat '/' as part of a word, e.g. M-Backspace etc. will only
### delete up to the path seperator '/'. the default setting is
### *?_-.[]~=/&;!#$%^(){}<>
#export WORDCHARS="*?_-.[]~=&;!#$%^(){}<>"
#zshrc_load_status worldchar usefull definition
#
## mails
#export MAIL=/var/spool/mail/$USER
#zshrc_load_status set spool for mails
#
## directory for run-help function to find docs
##export HELPDIR=/usr/local/lib/zsh/help
##zshrc_load_status set path for help
#
## Limit core size
#limit coredumpsize 0
#zshrc_load_status core dump size set to zero
#
## report timing stats for commands that take more than 60sec user/systime
#REPORTTIME=60
#zshrc_load_status report timing stats when take more than $REPORTIME sec.
#
## locales, le vrai probleme... certains prog ne supportent
## pas l'UTF-8, d'autres sont codés en durs pour ça (cf snownews)
## et de toutes façons, personnes ne veut se mettre d'accord
## à ce sujet (bien qu'UTF-8 soit de +en+ populaire, alors
## que franchement, à long terme, ça ne peut pas marcher)
## (ben voui, faudra bien passer à l'encodage sur 32bits un jour,
## avec toutes les possibilités à la con de locales, alors avoir
## un texte qui prend 3x plus de place juste pour les klingons 
## puissent le lire...)
#
## en attendant, la solution la plus simple c'est de rester
## en fr_FR, et d'utiliser un terminal utf-8 si besoin (urxvt)
#
##export LANG="fr_FR@euro.ISO-8859-15"
##export LANG="fr_FR@euro"
##export LANGUAGE="fr_FR@euro:en_US"
##export LC_MESSAGES="fr_FR@euro"
#export LC_ALL="C"
export LC_ALL="en_US.UTF-8"
##export LC_CTYPE="fr_FR.UTF-8"
##export LC_NUMERIC="fr_FR@euro"
##export LC_TIME="fr_FR@euro"
##export LC_COLLATE="fr_FR@euro"
##export LC_MONETARY="fr_FR@euro"
##export LC_MESSAGES="fr_FR@euro"
##export LC_PAPER="fr_FR@euro"
##export LC_NAME="fr_FR@euro"
##export LC_ADDRESS="fr_FR@euro"
##export LC_TELEPHONE="fr_FR@euro"
##export LC_MEASUREMENT="fr_FR@euro"
##export LC_IDENTIFICATION="fr_FR@euro"
##export GDM_LANG=fr_FR@euro.ISO-8859-15
#zshrc_load_status french environement
#
## urxvtd
#export RXVT_SOCKET="$HOME/.rxvt-unicode-$HOST"
#
## sensible-browser
## elinks for ssl support
## links2 is pointed as a 'mess' in list.debian.org
## lynx is too old now (a 'past')
## w3m seems to be more like a pager
## note: basically, links is a symbolic link to elinks
#export BROWSER="elinks:links2:links:lynx:mozilla"
#
## as VISUAL, this variable changes the behaviour of key-binding
## with zsh. See zshzle(1).

# Export prefered EDITOR
export EDITOR=vim

# Lanch this python script on python startup
#export PYTHONSTARTUP=$HOME/.python/startupfile.py

## color ls
#if [[ -e "$HOME/.zsh/dir_colors" ]];
#then
#  eval `dircolors $HOME/.zsh/dir_colors`
#else
#  eval `dircolors /etc/dir_colors`
#fi



# zsh's options 
source "$HOME/.zsh/zshrc.options"

# prompt, terminal's title
source "$HOME/.zsh/zshrc.prompt"

# bindkeys
source "$HOME/.zsh/zshrc.binding"

# pager (less, most, ...)
#source "$HOME/.zsh/zshrc.pager"

# alias
source "$HOME/.zsh/zshrc.alias"

# modules
source "$HOME/.zsh/zshrc.modules"

# misc functions
source "$HOME/.zsh/zshrc.functions"

# completion
source "$HOME/.zsh/zshrc.completion"

zshrc_load_status done
