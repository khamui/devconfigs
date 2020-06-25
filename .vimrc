execute pathogen#infect()
syntax on
set tabstop=2
"autocmd vimenter * NERDTree
colorscheme iceberg 
set bg=dark
let g:airline_theme = 'dark'
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'tslint']
\}

" Keep Plug commands between plug#begin() and plug#end().
call plug#begin()

" AUTOCOMPLETION
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

call plug#end()

let g:coc_global_extensions = [ 'coc-tsserver' ]
filetype plugin indent on

" Numbers
set number
set numberwidth=4
set ruler

" Delete characters outside of insert area
set backspace=indent,eol,start

" Disable backups and swap files
set nobackup
set nowritebackup
set noswapfile

" Enable search options
set is
set hls
