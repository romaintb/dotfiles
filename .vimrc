syntax on

color bluegray

set nonumber
set nocp
set autoindent
set listchars=tab:\.\ ,trail:-
set list
set wildmode=list:longest,list:full
set laststatus=2
set ruler
set cursorline
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

let html_use_css=1
let html_no_pre=1
let html_use_xhtml=1
let php_sql_query=1     "Coloration des requetes SQL
let php_htmlInStrings=1 "Coloration des balises html

" Autocompletion
filetype on
filetype plugin on
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType cpp set omnifunc=ccomplete#Complete

au BufRead,BufNewFile *.thtml setfiletype php
au BufRead,BufNewFile *.phtml setfiletype php
