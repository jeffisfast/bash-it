#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT='/Users/jefftarr/TarrDropbox/Computer_Setup/bash-it'

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

#PATH updates
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.rvm/bin:$PATH"
export PATH="/opt/local/bin:$PATH"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
export PATH="/usr/local/bin:$PATH"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto"

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh

git config --global user.name "Jeff Tarr"
git config --global user.email jeff@tarr.com
git config --global push.default simple

export NODE_ENV="dev"
export NVM_DIR="/Users/jefftarr/.nvm"
source ~/.nvm/nvm.sh
nvm use 4

# Load Bash It
source $BASH_IT/bash_it.sh
cp ~/.bash_profile $BASH_IT/template/bash_profile.template.bash

bash-it enable alias custom > /dev/null
bash-it enable alias atom > /dev/null
bash-it enable alias general > /dev/null
uptime
