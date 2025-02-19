call plug#begin()
    " Graphics
    Plug 'sainnhe/sonokai'
    Plug 'itchyny/lightline.vim'
    Plug 'mhinz/vim-startify'
    Plug 'tpope/vim-fugitive'

    " Typing
    Plug 'tpope/vim-commentary'
    Plug 'jiangmiao/auto-pairs'
    Plug 'machakann/vim-sandwich'
    Plug 'lervag/vimtex'
   
    " File exploring
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'junegunn/fzf.vim'

    " File rendering
    Plug 'airblade/vim-gitgutter'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" Color scheme
lua require'nvim-treesitter.configs'.setup{highlight={enable=true}}
colorscheme sonokai
syntax enable

" Disables the mouse and sets the cursor as a blinking vertical bar
set mouse=
set guicursor=a:ver100,a:blinkon100

" Disables line wrap; then adds cursor line, line numbers and the ruler
set nowrap cursorline
set number relativenumber
set colorcolumn=80

" Custom mappings
nnoremap <F2> :GFiles<CR>
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :noh<CR>
nnoremap <F9> :Git<CR>
cnoremap w!! w !sudo tee %
command! Q qall

" Sets indentations to 4 columns
set tabstop=4 shiftwidth=4
set foldmethod=indent foldlevelstart=99

" Startify configs
let g:startify_fortune_use_unicode = 1
let g:startify_files_number = 7
let g:startify_lists = [{'type': 'files'}]

" Lightline
let g:lightline = {
\   'colorscheme': 'sonokai',
\   'component_function': {'gitbranch': 'FugitiveHead'},
\   'active': {
\       'left': [['mode'], ['gitbranch', 'readonly', 'filename', 'modified']],
\       'right': [['lineinfo'], ['fileformat', 'fileencoding', 'filetype']]
\    }
\ }

" NERDTree
let NERDTreeIgnore = ['tags*', '.direnv']
