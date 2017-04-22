set nocompatible              " be iMproved, required
filetype off                  " required

set term=xterm-256color
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdTree'

"Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'tomtom/tcomment_vim'

"Plugin 'ggreer/the_silver_searcher'

Plugin 'tpope/vim-surround'

"Plugin 'garbas/vim-snipmate'

Plugin 'easymotion/vim-easymotion'

Plugin 'wincent/Command-T'

"Plugin 'vim-scripts/FuzzyFinder'

"Plugin 'eparreno/vim-l9'
"Plugin 'majutsushi/tagbar'

Plugin 'vim-scripts/supertab'

"Plugin 'Valloric/YouCompleteMe'

"Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"my default configuration
set number

"let g:solarized_termtrans = 1
let g:solarized_termcolors=256
set background=dark
" solarized options 
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

set guifont=Inconsolata:h20

syntax on
set gfn=Monaco:h16

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp',  '.svn', '.git']

set ruler 

set splitbelow
set splitright


" For silver search
if executable('ag')
"Note we extract the column as well as the file and line number
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c%m
endif

set wildmode=longest,list,full
set relativenumber
