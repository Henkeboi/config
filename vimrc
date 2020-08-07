let mapleader =" "

let @p='i ^[!xclip -r'

syntax on
filetype plugin indent on

set t_Co=256
nnoremap <leader>sv :source $MYVIMRC<cr>
"colorscheme material


"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" map <C-n> :NERDToggle<RC>

set undofile
set undodir=/home/henrikgg/.vim/undo
set undolevels=1000
set undoreload=100000

imap jk <ESC>l
imap Jk <ESC>l
imap jK <ESC>l
imap JK <ESC>l
map , :w<CR>
map <leader>f :Goyo \| set linebreak<CR>
map e el
syntax on

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

set clipboard=unnamed

set colorcolumn=100

" Recompile
  autocmd BufWritePost config.h,config.def.h !sudo make install
  autocmd BufWritePost *.tex !pdflatex '%'

" Enable Autocompletion:
  set wildmode=longest,list,full

set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

nnoremap <leader>j :call Togglecc()<cr>

function! Togglecc()
    if &colorcolumn
        setlocal cc=0
    else
        setlocal cc=100
    endif
endfunction
set cc=0
