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
set clipboard=unnamed,unnamedplus

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

nnoremap H ^
nnoremap L $

inoremap <C-c> <Esc>

nnoremap <leader>sf :action GotoFile<CR>
nnoremap <leader>sg :action SearchEverywhere<CR>

nnoremap grn :action RenameElement<CR>
nnoremap grd :action GotoDeclaration<CR>
nnoremap grr :action FindUsages<CR>
