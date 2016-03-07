" Set leader to ,
let mapleader=","
let maplocalleader="\\"

" Toggle line numbers
set relativenumber
" nnoremap <leader>N :setlocal number!<cr>
nnoremap <leader>n :call NumberToggle()<cr>

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

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

" Ignore angular directive errors
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]

filtetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab ts=4 sw=4 ai

set nosmartindent

let g:syntastic_scss_checkers=['']
let g:syntastic_javascript_checkers = ['eslint']

" enable vim mustache template abbreviations
let g:mustache_abbreviations = 1
