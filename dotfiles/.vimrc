" ---------- Plugins ------------
call plug#begin()
Plug 'morhetz/gruvbox'

Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'

Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'

Plug 'wakatime/vim-wakatime'
call plug#end()


" ---------- Configs ------------
" Color scheme and other things
set wrap! number termguicolors
set background=dark
colorscheme gruvbox

" Startup page
let g:startify_fortune_use_unicode = 1
let g:startify_files_number = 7
let g:startify_lists = [{'type': 'files'}]

" Status bar
set laststatus=2 noshowmode
let g:lightline = {
\   'colorscheme': 'gruvbox',
\   'active': {
\       'left': [['mode'], ['gitbranch', 'readonly', 'filename', 'modified']],
\       'right': [['lineinfo'], ['fileformat', 'fileencoding', 'filetype']]
\   },
\   'component_function': {'gitbranch': 'FugitiveHead'}
\ }

" Indentations
set tabstop=4 shiftwidth=4 expandtab
filetype plugin indent off
let g:indentLine_char = '|'
let g:indentLine_fileTypeExclude = ['startify']


" ---------- Mappings -----------
nnoremap #3 :NERDTree
nnoremap #4 :Startify
autocmd filetype c nnoremap #6 :! gcc % && ./a.out; rm a.out
autocmd filetype go nnoremap #6 :! go run %
autocmd filetype cpp nnoremap #6 :! g++ -std=c++17 % && ./a.out; rm a.out
autocmd filetype python nnoremap #6 :! python3 %
nnoremap #9 :Git

" ---------- Templates ----------
autocmd BufNewFile *.c 0r ~/.vim/templates/template.c
autocmd BufNewFile *.go 0r ~/.vim/templates/template.go
autocmd BufNewFile *.cpp 0r ~/.vim/templates/template.cpp
autocmd BufNewFile *.html 0r ~/.vim/templates/template.html
