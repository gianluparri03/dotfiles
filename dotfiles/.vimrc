" ---------- Plugins ------------
call plug#begin()
Plug 'sainnhe/sonokai'

Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'

Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
call plug#end()


" ---------- Configs ------------
" Color scheme and other things
set wrap! number termguicolors
colorscheme sonokai

" Startup page
let g:startify_fortune_use_unicode = 1
let g:startify_files_number = 7
let g:startify_lists = [{'type': 'files'}]

" Status bar
set laststatus=2 noshowmode
let g:lightline = {
\   'colorscheme': 'sonokai',
\   'active': {
\       'left': [['mode'], ['gitbranch', 'readonly', 'filename', 'modified']],
\       'right': [['lineinfo'], ['fileformat', 'fileencoding', 'filetype']]
\   },
\   'component_function': {'gitbranch': 'FugitiveHead'}
\ }

" Indentations
set tabstop=4 shiftwidth=4 expandtab
filetype plugin indent off
let g:indentLine_char = '¦'
let g:indentLine_fileTypeExclude = ['startify']


" ---------- Mappings -----------
nnoremap #3 :NERDTree
nnoremap #4 :vert term
nnoremap #6 :Git
autocmd filetype c nnoremap #7 :! gcc % && ./a.out; rm a.out
autocmd filetype go nnoremap #7 :! go run %
autocmd filetype cpp nnoremap #7 :! g++ -std=c++17 % && ./a.out; rm a.out
autocmd filetype python nnoremap #7 :! python3 %
autocmd filetype c nnoremap #8 :! gcc % -o %:r
autocmd filetype go nnoremap #8 :! go build %
autocmd filetype cpp nnoremap #8 :! g++ -std=c++17 % -o %:r


" ---------- Templates ----------
autocmd BufNewFile *.c 0r ~/.vim/templates/template.c
autocmd BufNewFile *.go 0r ~/.vim/templates/template.go
autocmd BufNewFile *.cpp 0r ~/.vim/templates/template.cpp
autocmd BufNewFile *.html 0r ~/.vim/templates/template.html
