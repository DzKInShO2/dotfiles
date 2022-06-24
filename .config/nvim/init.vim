set noshowmode

set tabstop=4
set shiftwidth=4
set expandtab

let mapleader = " "

set relativenumber number

call plug#begin('~/.config/nvim/plug')

Plug 'vimwiki/vimwiki'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'ilyachur/cmake4vim'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/tagbar'

call plug#end()

colorscheme onedark
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

nnoremap <C-t> :NERDTreeToggle<CR>

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

set encoding=utf8

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

let g:cmake_build_dir = "build"

map <leader>s :split<Enter>
map <leader>sv :vsplit<Enter>

nmap <Leader>t :TagbarToggle<CR>

nnoremap ! :!
nnoremap <silent> <C-l> :nohl<CR><C-l>

let g:floaterm_keymap_toggle = '<Leader>f'
