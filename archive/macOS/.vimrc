" ~/.vimrc

" force vim to be in XXI
set nocompatible

" useful maps
map <F2> :w! <cr>
map <F3> :Explore <cr>
map <F10> :x! <cr>
map <F4> :tabnew <cr>

" colors
let g:material_terminal_italics = 0
let g:material_theme_style = 'darker'
colorscheme material
set background=dark

" code
syntax on
set number

" stuff
filetype plugin on
let g:netrw_banner=0
let g:netrw_liststyle=3
set path+=**
set wildmenu

" gui
set mouse=a
set guifont=SF\ Mono:h14
set guicursor+=a:ver20-Cursor
set lines=28 columns=93 " window size
