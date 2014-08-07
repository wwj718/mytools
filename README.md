##about
将使用vim过程中相关的东西放到这里

##升级vim
*  sudo add-apt-repository ppa:fcwu-tw/ppa
*  sudo apt-get update
*  sudo apt-get install vim

##插件管理
使用[Vundle.vim](https://github.com/gmarik/Vundle.vim)

##迅速配置自己的环境
*  升级vim
*  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
*  :PluginInstall
*  将本库中的.vimrc拉取到本地 ~/

##动手用python写插件
参看库中vimmit

*  [python-vim](http://vimdoc.sourceforge.net/htmldoc/if_pyth.html#python-vim)
*  [vim 的 python 接口](http://xwsoul.com/posts/857)
*  [python-vim](http://python.42qu.com/11165602)
###使用插件
*  :source vimmit.vim
*  :call Reddit()
