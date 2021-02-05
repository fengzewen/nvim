"choosewin
" 使用 ALT+E 来选择窗口
nmap - <Plug>(choosewin)
let mapleader = "\<space>"

nmap <F2> :NERDTreeToggle<cr>
nnoremap <leader>a :Ack
"缩进
vnoremap < <gv
vnoremap > >gv
"两个逗号退出编辑模式
imap ,, <Esc>
tmap ,, <Esc>
"插入模式移动快捷键
imap <c-h> <left>
imap <c-j> <down>
imap <c-k> <up>
imap <c-l> <right>
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-d> <del>
"命令模式移动快捷键
cnoremap <c-h> <left>
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-l> <right>
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-f> <c-d>
cnoremap <c-b> <left>
cnoremap <c-d> <del>
cnoremap <c-_> <c-k>
"easyalign 等号对齐
xmap ga <plug>(easyalign) 
nmap ga <Plug>(EasyAlign)

nmap <F3> :TagbarToggle<CR>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>
"
" Alternate way to save
nnoremap <silent> <C-s> :w<CR>
" Alternate way to quit
nnoremap <silent> <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <silent> <C-c> <Esc>
" <TAB>: completion.
"inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

