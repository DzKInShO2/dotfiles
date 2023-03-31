vim.cmd[[
filetype plugin indent on

syntax enable

let g:tex_flavor='latex'

let g:vimtex_view_method = 'zathura'

let g:vimtex_quickfix_mode=0

let g:vimtex_compiler_method = 'latexrun'
let g:vimtex_compiler_latexrun = {
		\ 'build_dir' : 'build',
	\}

let g:tex_conceal='abdmg'
set conceallevel=1

let maplocalleader = ","
]]
