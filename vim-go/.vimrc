set nocompatible " Use the vim's keyboard setting, not vi
filetype off                  " required

"============go vim setting============

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/grep.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/tony/.vim/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"=============go vim setting end=======

syntax on 
set number
set autoindent " Copy indent from current line when starting a new line
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cindent
set nobackup " No backup
set smartindent 
set fileencodings=utf-8,gb18030,cp936,big5 " Set the encode
set ruler
set smarttab
"set clipboard+=unnamed
set hlsearch " Highlight the search result
filetype on " File type detection
set showmatch " When a bracket is inserted, briefly jump to the matching one
set showmode " Show the mode
"set cursorline " Highlighter the current line

"===========go tags setting
:set tags=~/go/src/.gotags

noremap <F3> :Grep<CR>
noremap <F4> :Rgrep<CR>
cabbrev E Explore
