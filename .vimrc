" ~/.vimrc
" ver 06042022
set nocompatible

" Packaging
filetype plugin on
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree' "a better VIm file manager
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "file search
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'tribela/vim-transparent'
"Plug 'tpope/vim-fugitive' "Git!
Plug 'chriskempson/base16-vim' "colors
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox' "colors
Plug 'vim-airline/vim-airline' "airline-vim
Plug 'vim-airline/vim-airline-themes' "airline-vim themes
call plug#end()

function! MyLineNumber()
  return substitute(line('.'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g'). '/'.
    \    substitute(line('$'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g')
endfunction
call airline#parts#define('linenr', {'function': 'MyLineNumber', 'accents': 'bold'})

let g:airline#extensions#tabline#formatter = 'default' "tab names
let g:airline#extensions#tabline#show_buffers = 0 "don't show buffers
let g:airline#extensions#tabline#enabled = 1 "don't show tabline
let g:airline_powerline_fonts = 1 "don't use powerline symbols
let g:airline_skip_empty_sections = 1 "skip empty sections
let g:airline_section_z = airline#section#create(['%3p%% ', 'linenr', '%3v']) "line number section
let g:airline_section_y = '' "empty section Y

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_fixers = {
\	'*': ['remove_trailing_lines', 'trim_whitespace'],
\	'cpp': ['clang-format']
\}

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

let mapleader = '\'
nnoremap <Leader> <C-w>

map <F2> :w! <cr>
nnoremap <C-s> :w <CR>
map <F8> :ALEFix <cr>
map <F9> :qa! <cr>
map <F10> :x! <cr>

map <F3> :NERDTreeToggle <cr>
nnoremap <F5> :call Comp() <cr>
nnoremap <C-c> :call Comp() <cr>
map <F4> :tabnew <cr>
map <F7> :set rnu! <cr>


fu! Comp()
    let filename=expand('%:t')
    echo filename
    execute '!comp' filename
endfunction

autocmd VimEnter * AirlineToggleWhitespace
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

set background=dark
colorscheme gruvbox "' gruvbox base16-ashes onedark xoria256
let g:airline_theme='gruvbox' "'gruvbox monochrome peaksea base16_ashes'
let g:gruvbox_italic=1

syntax on
set nu rnu "line numbers
set showcmd "show last command

set encoding=utf-8
set ff=unix
set backspace=2
set backspace=indent,eol,start
let g:netrw_banner=0
let g:netrw_liststyle=3
set title
set path+=**
set wildmenu
set completeopt=longest,menuone
set nowrap
set nolinebreak
set incsearch
set noshowmatch
set noshowmode
set smarttab
set shiftwidth=4
set tabstop=2
set ttimeoutlen=10
set laststatus=2
set noswapfile
set t_Co=256
set mouse=a
set guifont=Monaco:h16
set guicursor+=a:block-Cursor
set guicursor+=a-n-c:blinkon0
set clipboard=unnamed

if has("gui_running")
  let g:airline_powerline_fonts = 0
  set lines=40 columns=135
endif

" The END
