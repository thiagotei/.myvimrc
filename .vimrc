
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

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
set laststatus=2
"set guifont=Inconsolata\ for\ Powerline
"let g:Powerline_symbols = 'fancy'
"set fillchars+=stl:\ ,stlnc:\   

let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme='jellybeans' 
"set guifont=Source\ Code\ Pro\ for\ Powerline

""" FOR STATUSLINE
set encoding=utf-8 " Necessary to show Unicode glyphs
"let g:Powerline_symbols = 'fancy'
"set nocompatible   " Disable vi-compatibility
" For powerline font in MacVim
"set guifont=Menlo\ For\ Powerline
"set guifont=Inconsolata\ for\ Powerline

" if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"  endif
"
"  " unicode symbols
"  let g:airline_left_sep = '»'
"  let g:airline_left_sep = '▶'
"  let g:airline_right_sep = '«'
"  let g:airline_right_sep = '◀'
"  let g:airline_symbols.linenr = '␊'
"  let g:airline_symbols.linenr = '␤'
"  let g:airline_symbols.linenr = '¶'
"  let g:airline_symbols.branch = '⎇'
"  let g:airline_symbols.paste = 'ρ'
"  let g:airline_symbols.paste = 'Þ'
"  let g:airline_symbols.paste = '∥'
"  let g:airline_symbols.whitespace = 'Ξ'

syntax on
"set number
" hi Search ctermbg=gray  
hi Search ctermbg=LightGray ctermfg=Blue  
" highlight Comment ctermbg=DarkGray
" highlight Comment ctermbg=Blue ctermfg=White
highlight Comment ctermfg=LightGray
" highlight Constant ctermbg=Blue
" highlight Normal ctermbg=Black
highlight NonText ctermbg=Black
" highlight Special ctermbg=DarkMagenta
highlight Cursor ctermbg=Green

" indentation source : http://vim.wikia.com/wiki/Converting_tabs_to_spaces
autocmd FileType * set tabstop=8 shiftwidth=4 expandtab autoindent smartindent cindent
autocmd FileType python set ai sw=4 ts=4 sta et fo=croql
" in makefiles, don't expand tabs to spaces, since actual tab characters are
" " needed, and have indentation at 8 chars to be sure that all indents are
" tabs
" " (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list
