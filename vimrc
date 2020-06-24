
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

  Plugin 'vim-latex/vim-latex'

  " Airline
  Plugin 'vim-airline/vim-airline'

  " NERD commenter
  Plugin 'https://github.com/scrooloose/nerdcommenter.git'

  " Search tools
  Plugin 'https://github.com/vim-scripts/IndexedSearch.git'

  Plugin 'godlygeek/tabular'

  " Git markdown
  Plugin 'https://github.com/plasticboy/vim-markdown.git'

  " XML stuff 
  Plugin 'https://github.com/othree/xml.vim'

  " Git tools
  Plugin 'https://github.com/tpope/vim-fugitive.git'

  " Async
  Plugin 'skywind3000/asyncrun.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""
" Vundle End "
""""""""""""""

let g:vim_markdown_folding_disabled = 1

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
colorscheme morning

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

""" Airline 
set laststatus=2

let g:airline_powerline_fonts = 1

""" Spelling 
set spelllang=en_us

""" No beep
set noerrorbells visualbell t_vb=



"""""""""""""""""
" vim-latex start
"""""""""""""""""
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"""""""""""""""""
" vim-latex end
"""""""""""""""""
