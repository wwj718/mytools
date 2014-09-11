" 自动检测文件类型并加载相应的设置
filetype plugin indent on
autocmd FileType python setlocal et sta sw=4 sts=4
"开启行数
set nu
"开启鼠标可用,会导致无法复制，需要时临时开
"set mouse=a
"开启语法加亮
syntax on
"配色风格
colorscheme pablo
"设定 Tab 键缩进的空格数
set tabstop=4
"设定编辑器将多少空格视为一个缩进
set shiftwidth=4
"将缩进转换为空格
set expandtab
"设定自动缩进(新行与前一行缩进相同)
set autoindent
"命令行历史纪录
set history=500
"搜索时忽略大小写
set ignorecase
"高亮显示搜索结果
set hlsearch


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
"依赖较多，暂时不默认装
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'xiaket/better-header'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'msanders/snipmate.vim'
Plugin 'scrooloose/syntastic'
Plugin 'wwj718/vimForMyBlog'
"快速跳转  \\w
Plugin 'Lokaltog/vim-easymotion'
"css颜色显示
"Plugin 'skammer/vim-css-color'
"vim git
Plugin 'tpope/vim-fugitive'
"注释\cc \cu
Plugin 'scrooloose/nerdcommenter'
"自动补全ctrl \
Plugin 'drmingdrmer/xptemplate'
"需要ctags
Plugin 'majutsushi/tagbar'
"python 补全
Plugin 'davidhalter/jedi-vim'
"远程协作，需要pip依赖
"Plugin 'FredKSchott/CoVim'
"Plugin 'kchmck/vim-coffee-script'
"类似sublime多选  ctrl n/p
Plugin 'terryma/vim-multiple-cursors'
"对齐线
Plugin "vim-indent-guides"



" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)

"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.

"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set number
map <F7> :NERDTreeToggle<CR>

"给文件header
"let g:BHAUTHOR = 'wuwenjie <wuwenjie718@gmail.com>'
"let g:BHUnder = ['/tmp/']

"使用ctrlp全局搜索文件
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"vim-airline
"使用的话 输入air<tab> 看用法，theme改变主题
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "kalisi"
let g:airline_powerline_fonts = 1

"vim-colors-solarized
"colorscheme <tab>设置主题
syntax enable
set background=dark
colorscheme solarized

"Tagbar
nmap <silent> <F4> :TagbarToggle<CR>


"检测文件类型
"用来定制snippet，后缀为wwj
126 au BufNewFile,BufRead *.wwj    setf wwj
