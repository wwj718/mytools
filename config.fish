# Path to Oh My Fish install.
set -gx OMF_PATH /Users/wwj/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /Users/wwj/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

alias penv='source ~/env/bin/activate.fish'

#bash时 .bashrc 之后source
. /Users/wwj/z-fish/z.fish
alias vi="vim"
#for go by wwj
export GOPATH=$HOME
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

setenv PATH "$HOME/.pyenv/bin" $PATH # 这样会短路后边的选项
eval (pyenv init - fish)
# pip install pygments
alias cat='pygmentize -O style=monokai -f console256 -g'
alias addgitignore='wget https://raw.githubusercontent.com/github/gitignore/master/Python.gitignore -O .gitignore'
alias unicode='echo from __future__ import unicode_literals'
