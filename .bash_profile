# created .bash_profile by me - not native to system

# the following is for virtualenvwrapper
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh

# custom prompt
export PS1='\[\e[0;34m\]rachelcompy\[\e[m\] \[\e[0;32m\@ \w \[\e[m\] \n $ '

# terminal refresh
alias makeitso='. ~/.bash_profile'

export PYTHONPATH=$PYTHONPATH:/usr/bin/python

# add color to different things
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# app alias
alias gedit='/Applications/gedit.app/Contents/MacOS/gedit'
