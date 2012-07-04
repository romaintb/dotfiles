syntax on

call pathogen#infect()

if has('gui_running')
    set guifont=Terminus\ 8
   " color mustang
    color lucius
else
    set t_Co=256
    set background=light
    color lucius
endif

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
"set textwidth=80

" mouse can be used in term :)
set mouse=a

" allow backspacing over everything in insert mode. works on openbsd ??
set backspace=2

" ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 2

" nerdtree plugin
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <F2> :NERDTreeToggle<CR>

" tagbar plugin
let g:tagbar_usearrows = 1
map <F3> :TagbarToggle<CR>


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
