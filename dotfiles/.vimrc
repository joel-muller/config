syntax on

colorscheme default

let mapleader=" "

set relativenumber
set number
set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set smartcase
set hlsearch

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

nnoremap H ^
nnoremap L $

inoremap <C-c> <Esc>

nnoremap <leader>sf :action GotoFile<CR>
nnoremap <leader>sg :action SearchEverywhere<CR>
nnoremap <leader>rn :action RenameElement<CR>
nnoremap gd :action GotoDeclaration<CR>
nnoremap gr :action FindUsages<CR>
