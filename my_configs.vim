" Set leader to ,
let mapleader=","
let maplocalleader="\\"

" Toggle line numbers
nnoremap <leader>N :setlocal number!<cr>

" Open vim shell with <;>, no need to press shift this way
nnoremap ; :
nnoremap <leader>; ;

" Accidental F1 click switched to Esc
noremap! <F1> <Esc>

" Exit insert mode
inoremap jj <Esc>

" Accidental permission lack workaround
cnoremap w!! w !sudo tee % >/dev/null

" Wrap word under cursor with quotes
vnoremap <leader>" <esc>a"<esc>gvo<esc>i"<esc>gvo<esc>ll
vnoremap <leader>' <esc>a'<esc>gvo<esc>i'<esc>gvo<esc>ll

" Open file explorer
nnoremap <leader>e :Ex<ENTER>

" Resize tab splits with arrow keys
noremap <up> <C-W>-
noremap <down> <C-W>+
noremap <left> <C-W><
noremap <right> <C-W>>
