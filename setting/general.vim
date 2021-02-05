set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

filetype plugin indent on

syntax on

set background=dark
color monokai
"color desert
"color solarized

" highlight current line
au winleave * set nocursorline nocursorcolumn
au winenter * set cursorline cursorcolumn
set cursorline cursorcolumn

" search
set showmatch                                                     " show matching bracket (briefly jump)
set incsearch
set ignorecase
set smartcase
set hlsearch

" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " more powerful backspacing
set t_co=256                                                      " explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
set nowb
set nobackup
set noswapfile
set undofile
set noerrorbells
set visualbell
set autoread

" default indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
set expandtab       " expand tab to space

autocmd filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd filetype coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd filetype vue,html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd filetype sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
