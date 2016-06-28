# Path to Oh My Fish install.
set -gx OMF_PATH /Users/wwj/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /Users/wwj/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

alias penv='source ~/env/bin/activate.fish'

. /Users/wwj/z-fish/z.fish
alias vi="vim"
#for go by wwj
export GOPATH=$HOME
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

setenv PATH "$HOME/.pyenv/bin" $PATH
eval (pyenv init - fish)
