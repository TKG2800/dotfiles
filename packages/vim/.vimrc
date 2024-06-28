" .vimrc

"===== Setting ======
"== Chararacter ==
set fenc=utf-8
"== Cursor ==
set cursorline
set cursorcolumn

===== Appearance =====
set title
set visualbell
set showmatch
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%,space:-
set hidden
set laststatus=2
set wildmode=list:longest
"set colorcolumn=
colorscheme molokai
syntax enable

"== tabs·intend ==
set smartindent
set expandtab
set autoindent
set tabstop=2
set shiftwidth=2

"== Display ==
set number
set virtualedit=onemore
set ambiwidth=double
set showcmd

"===== keymaps ====
nnoremap k gk
nnoremap j gj

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"-- window splitting --
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <Chw>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap s><C-w>>
nnoremap s<<C-w><
nnoremap s+<C-w>+
nnoremap s-<C-w>-

"-- Tab manipulation --
nnoremap st :<C-u>tabnew<CR>
nnoremap sl gt
nnoremap sh gT
"==== Other ===="
set autoread
set clipboard+=unnamed
"== Backup·Swap ==
"== Backup ==
set nobackup
" == Swap ==
set noswapfile
"== History ==
set history=100
"== Mouse ==
set mouse=a
"== Search ==
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
"== Plugin ==
call plug#begin()

" List your plugins here
Plug 'tomasr/molokai', {'do': 'cp colors/* ~/.vim/colors/'}
Plug 'bfontaine/Brewfile.vim'

call plug#end()
