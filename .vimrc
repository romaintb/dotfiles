syntax on
set nonumber
set nocp
set autoindent
if has("gui_running")
    color wombat
    set guifont=Terminus\ 9
else
    color koehler
endif

set listchars=tab:\|\ ,trail:-
set list
set wildmode=list:longest,list:full
set laststatus=2
set ruler
"set cursorline

let html_use_css=1
let html_no_pre=1
let html_use_xhtml=1

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

