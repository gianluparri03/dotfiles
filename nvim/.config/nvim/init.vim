call plug#begin()
    Plug 'airblade/vim-gitgutter'       " +/~/- Next to lines
    Plug 'tpope/vim-commentary'         " `gcc` to comment out things
    Plug 'tpope/vim-fugitive'           " git window
    Plug 'Yggdroot/indentLine'          " | in indentations
    Plug 'itchyny/lightline.vim'        " statusline
    Plug 'mhinz/vim-startify'           " homepage
    Plug 'jiangmiao/auto-pairs'         " closes brackets, quotes...
    Plug 'preservim/nerdtree'           " file system explorer
    Plug 'ryanoasis/vim-devicons'       " emojis!
    Plug 'sainnhe/sonokai'              " colorscheme 
    Plug 'ludovicchabant/vim-gutentags' " ctrl-] jumps to definition
call plug#end()

" Disable mouse and set the cursor as a blinking vertical bar
set mouse=
set guicursor=a:ver100,a:blinkon100

" Disbale line wrap; then adds numbers and cursorline
set nowrap
set number
set cursorline

" Color scheme
colorscheme sonokai

" Folding
set foldmethod=indent

" Startify configs
let g:startify_fortune_use_unicode = 1
let g:startify_files_number = 7
let g:startify_lists = [{'type': 'files'}]

set noshowmode
let g:lightline = {
\   'colorscheme': 'sonokai',
\   'component_function': {'gitbranch': 'FugitiveHead'},
\   'active': {
\       'left': [['mode'], ['gitbranch', 'readonly', 'filename', 'modified']],
\       'right': [['lineinfo'], ['fileformat', 'fileencoding', 'filetype']]
\    }
\ }

" Maps the tab button to 4 spaces; draw | on identations
set tabstop=4 shiftwidth=4 expandtab
let g:indentLine_char = '|'
let g:indentLine_fileTypeExclude = ['startify']
let g:vim_json_conceal=0

" Mappigs & Commands
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :noh<CR>
nnoremap <F9> :Git<CR>
cnoremap w!! w !sudo tee %
command! Q qall
