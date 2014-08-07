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

##使用Valloric/YouCompleteMe
*  使用Vundle安装'Valloric/YouCompleteMe'
*  sudo apt-get install build-essential cmake
*  sudo apt-get install python-dev
*  cd ~/.vim/bundle/YouCompleteMe
*  ./install.sh (--clang-complete可选)

##使用ctrlp
*  https://github.com/kien/ctrlp.vim
*  [资料](http://williamherry.com/blog/2012/08/25/master-vim-04-ctrlp/)

##动手用python写插件
参看库中vimmit

*  [python-vim](http://vimdoc.sourceforge.net/htmldoc/if_pyth.html#python-vim)
*  [vim 的 python 接口](http://xwsoul.com/posts/857)
*  [python-vim](http://python.42qu.com/11165602)
###使用插件
*  :source vimmit.vim
*  :call Reddit()

###制作插件范例*  
[better-header](https://github.com/xiaket/better-header)