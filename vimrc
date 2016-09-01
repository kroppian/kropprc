
""""""""""""""""
" Vundle Start "
""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'

  " Twig highlighting
  Plugin 'https://github.com/evidens/vim-twig.git'

  " You complete me (auto complete)
  Plugin 'https://github.com/Valloric/YouCompleteMe.git'

  " NERD Tree
  Plugin 'https://github.com/scrooloose/nerdtree.git'

  " Airline
  Plugin 'vim-airline/vim-airline'

  " NERD commenter
  Plugin 'https://github.com/scrooloose/nerdcommenter.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""
" Vundle End "
""""""""""""""

" ?????
set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
" filetype plugin indent on       " load file type plugins + indentation

" 
filetype plugin on
set omnifunc=syntaxcomplete#Complete


"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2     " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
"""set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set number

"""colorscheme twilight

set ignorecase

"""set mouse=ar

runtime macros/matchit.vim

" Send more characters for redraws
set ttyfast
"
" " Enable mouse use in all modes
set mouse=a
"
" " Set this to the name of your terminal that supports mouse codes.
" " Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

