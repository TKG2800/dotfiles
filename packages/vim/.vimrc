"==== Display ====
set number
set title
set visualbell t_vb=
set laststatus=2
set ruler
set ambiwidth=double
syntax on
"=== Character •Cursor====
set fenc=utf-8
set whichwrap=b,s,h,l,<,>,[,],~
set backspace=indent,eol,start 
set list
set listchars=tab:▸-,trail:-,eol:↲,nbsp:%,space:_
set expandtab
set smartindent
set virtualedit=onemore
set tabstop=2
"=== Mouse ====
set mouse=a
set ttymouse=xterm2
"=== Search ====
set ignorecase
set smartcase
set wrapscan
set hlsearch
set incsearch
" Plugins 
"=== Key Input ====
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <silent> jj <Esc>
"Window Split
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sj :<C-w>j
nnoremap sk :<C-w>k
nnoremap sl :<C-w>l
nnoremap sh :<C-w>h
nnoremap sJ :<C-w>J
nnoremap sK :<C-w>K
nnoremap sL :<C-w>L
nnoremap sH :<C-w>H
nnoremap s> :<C-w>>
nnoremap s< :<C-w><
nnoremap s+ :<C-w>+
nnoremap s- :<C-w>-
"Tab
nnoremap st :<C-u>tabnew<CR>
nnoremap sn gt
nnoremap sp gT
"=== Other====
set history=100
set clipboard+=unnamed
set nobackup
set noswapfile
set autoread
