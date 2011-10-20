" Vim color file
"
" Based on suckless.org bluegray

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors
" :he highlight
let g:colors_name="bluegray"
hi SpecialKey		cterm=none			ctermfg=4
hi NonText		cterm=none			ctermfg=none
hi Directory		cterm=bold			ctermfg=none
hi ErrorMsg		ctermbg=none			ctermfg=red
hi IncSearch		cterm=reverse			ctermfg=none
hi Search			cterm=underline		ctermbg=3
hi MoreMsg		cterm=bold			ctermfg=none
hi ModeMsg		cterm=bold			ctermfg=none
hi LineNr			cterm=none			ctermfg=3
hi Question		cterm=standout			ctermfg=none
hi StatusLine		cterm=standout			ctermfg=7			ctermbg=0
hi StatusLineNC	cterm=reverse			ctermfg=7			ctermbg=0
hi VertSplit		cterm=standout			ctermfg=7
hi Title			cterm=bold			ctermfg=none
hi Visual			cterm=reverse			ctermfg=2
hi VisualNOS		cterm=bold,underline	ctermfg=none
hi WarningMsg		cterm=standout			ctermfg=none
hi WildMenu		cterm=standout			ctermfg=none
hi Folded			cterm=standout			ctermfg=none
hi FoldColumn		cterm=standout			ctermfg=gray		ctermbg=0
hi DiffAdd		cterm=bold			ctermfg=none
hi DiffChange		cterm=bold			ctermfg=none
hi DiffDelete		cterm=bold			ctermfg=none
hi DiffText		cterm=reverse			ctermfg=none
hi Comment		cterm=reverse			ctermfg=6
hi Constant		cterm=none			ctermfg=6
hi Special		cterm=bold			ctermfg=none
hi Identifier		cterm=bold			ctermfg=none
hi Statement		cterm=bold			ctermfg=4
hi PreProc							ctermfg=none
hi Type			cterm=bold			ctermfg=4
hi Underlined		cterm=underline		ctermfg=none
hi Ignore			cterm=bold			ctermfg=none
hi Error			ctermbg=none			ctermfg=1
hi Todo			cterm=bold			ctermfg=black		ctermbg=4
