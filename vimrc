" Plugins
call plug#begin()
Plug 'sainnhe/sonokai'
Plug 'mhinz/vim-startify'

Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'

Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
call plug#end()


" Startup page
let g:startify_fortune_use_unicode = 1
let g:startify_lists = [{'type': 'files'}]

" Things
set wrap!
set number

" Color Scheme
set termguicolors
let g:sonokai_style = 'atlantis'
let g:sonokai_enable_italic = 1
colorscheme sonokai

" Status bar
let g:lightline = {'colorscheme': 'sonokai'}
set noshowmode
set laststatus=2

" Indentations
let g:indentLine_char = '¦'
filetype plugin indent off
let g:indentLine_fileTypeExclude = ['startify']
set tabstop=4
set shiftwidth=4
set expandtab


" Templates
autocmd BufNewFile *.c    0r ~/.vim/templates/template.c
autocmd BufNewFile *.cpp  0r ~/.vim/templates/template.cpp
autocmd BufNewFile *.go   0r ~/.vim/templates/template.go
autocmd BufNewFile *.html 0r ~/.vim/templates/template.html

" Mappings
nnoremap #2 :TagbarOpen
nnoremap #3 :NERDTree
nnoremap #4 :vert term
nnoremap #6 :echo "Cannot run file"
nnoremap #8 :echo "Cannot build file"
autocmd filetype go     nnoremap #6 :! go run %
autocmd filetype go     nnoremap #8 :! go build %
autocmd filetype python nnoremap #6 :! python3 %
autocmd filetype c      nnoremap #6 :! gcc %; ./a.out; rm a.out
autocmd filetype c      nnoremap #8 :! gcc % -o %:r
autocmd filetype cpp    nnoremap #6 :! g++ -std=c++17 %; ./a.out; rm a.out
autocmd filetype cpp    nnoremap #8 :! g++ -std=c++17 % -o %:r
