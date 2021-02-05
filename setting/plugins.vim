" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/autoload/plugged')

    Plug 'neoclide/coc.nvim'
    Plug 'christoomey/vim-tmux-navigator'
    "Plug 'scrooloose/nerdtree'
    Plug 'preservim/tagbar'
    Plug 'Lokaltog/vim-powerline'
    Plug 'preservim/nerdcommenter' 
    Plug 'junegunn/vim-easy-align'
    Plug 'crusoexia/vim-monokai'
    Plug 'Chiel92/vim-autoformat'
    Plug 'tpope/vim-surround'
    Plug 'easymotion/vim-easymotion'
    Plug 'vim-scripts/vim-auto-save'
    Plug 'tpope/vim-markdown'
    Plug 'mileszs/ack.vim'
    Plug 'pbrisbin/vim-mkdir'
    Plug 'alvan/vim-closetag'
	Plug 'Raimondi/delimitMate' " 配对括号和引号自动补全
    " 一次性安装一大堆 colorscheme
	Plug 'flazz/vim-colorschemes'
    " 支持库，给其他插件用的函数库
	Plug 'xolox/vim-misc'
    " 用于在侧边符号栏显示 marks （ma-mz 记录的位置）
	Plug 'kshenoy/vim-signature'
    " 使用 ALT+e 会在不同窗口/标签上显示 A/B/C 等编号，然后字母直接跳转
	Plug 't9md/vim-choosewin'
    " Git 支持
	"Plug 'tpope/vim-fugitive'
    Plug 'Yggdroot/LeaderF'

    " Text Navigation
    Plug 'unblevable/quick-scope'
      " auto set indent settings
    Plug 'tpope/vim-sleuth'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Cool Icons
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
     " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'rhysd/git-messenger.vim'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " Vista
    Plug 'liuchengxu/vista.vim'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
      " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
      " Find and replace
    Plug 'ChristianChiarulli/far.vim'
    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
    " Smooth scroll
    "Plug 'psliwka/vim-smoothie'
    Plug 'vim-vdebug/vdebug'
    "ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    Plug 'terryma/vim-multiple-cursors'
    Plug 'junegunn/goyo.vim'

    Plug 'junegunn/fzf'
    Plug 'yuki-ycino/fzf-preview.vim'
    Plug 'junegunn/fzf.vim'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
