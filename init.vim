" ================插件安装======================
call plug#begin('~/.config/vim_plug/plugged')
" 补全
Plug 'neoclide/coc.nvim'
" 窗口导航
Plug 'christoomey/vim-tmux-navigator'
" 目录
Plug 'scrooloose/nerdtree'
Plug 'humiaozuzu/TabBar'
" 快速搜索文件
Plug 'kien/ctrlp.vim'
"状态栏
"Plug 'vim-airline/vim-airline'
Plug 'Lokaltog/vim-powerline'

"Plug 'ryanoasis/vim-devicons'
" 注释
Plug 'preservim/nerdcommenter' 
" 等号对齐
Plug 'junegunn/vim-easy-align'
" 主题
Plug 'crusoexia/vim-monokai'
" 格式化
" support format the file
" <LEADER> + f trigger
Plug 'Chiel92/vim-autoformat'
" 单引号，双引号，括号自动补全
" support surround operaion
Plug 'tpope/vim-surround'

" 翻译
" support translating English
" <LEADER> + t trigger
Plug 'voldikss/vim-translator'
" 跳转
" support enchaned motion experience
Plug 'easymotion/vim-easymotion'
" 自动保存
" suport auto saving
Plug 'vim-scripts/vim-auto-save'

Plug 'tpope/vim-markdown'

Plug 'mileszs/ack.vim'

"在vim中新建文件时，自动帮你创建不存在的目录
Plug 'pbrisbin/vim-mkdir'

"用vim的autocmd命令在进入和退出insert mode的时候自动切换输入法
Plug 'humiaozuzu/fcitx-status'
Plug 'nvie/vim-togglemouse'

call plug#end()

" ======================普通设置=============================

" 文件编码
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

filetype plugin indent on

syntax on

" 中文提示与帮助
language messages zh_CN.utf-8 
set helplang=cn


set background=dark
color monokai

"set guifont=Hack:h14

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
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
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
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

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
set expandtab       " expand tab to space

autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType vue,html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120


" ======================插件设置=============================
" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"

" nerdcommenter
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" 设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double

" airline
" 总是显示状态栏 
let laststatus = 2
let g:airline_powerline_fonts = 1   " 使用powerline打过补丁的字体
let g:airline_theme="dark"      " 设置主题
" 开启tabline
let g:airline#extensions#tabline#enabled = 1      "tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '   "tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'      "tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1  

"EasyAlign 等号对齐
xmap ga <Plug>(EasyAlign) " Visual 模式下快捷键

" ======================快捷键设置=============================
let mapleader = "\<space>"
nmap <F2> :NERDTreeToggle<cr>
nnoremap <leader>a :Ack
nnoremap <leader>v V`]
"可视化模式下按< 或 > 缩进
vnoremap < <gv
vnoremap > >gv

" ======================快捷键设置=============================
" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif



