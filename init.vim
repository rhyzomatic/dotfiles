"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.local/share/dein/')
  call dein#begin('~/.local/share/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('~/.local/share/dein//repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('iCyMind/NeoSolarized')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('tweekmonster/deoplete-clang2')
  call dein#add('AndrewRadev/linediff.vim')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-repeat')
  call dein#add('lervag/vimtex')

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" call deoplete#enable()

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><S-tab> pumvisible() ? "\<c-p>" : "\<S-tab>"

" set termguicolors

colorscheme NeoSolarized
set background=dark

set showmatch
set ruler
set number
set expandtab
set tabstop=4
set shiftwidth=4
set colorcolumn=80

let g:deoplete#enable_at_startup = 1

let g:deoplete#sources#clang#executable = '/usr/bin/clang'

" let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-3.8/lib/libclang.so.1'
" let g:deoplete#sources#clang#clang_header = '/usr/include/clang/3.8/include/'

" start from last position when file was closed
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" mouse support
set mouse=a

" smart case search
set ignorecase
set smartcase

" for vimtex
if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif
let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete
