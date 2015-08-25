" these lines are suggested to be at the top of every colorscheme
hi clear
if exists("syntax_on")
  syntax reset
endif

"Load the 'base' colorscheme - the one you want to alter
"runtime colors/desert.vim

let g:colors_name = "bobcolors"

hi CursorLine   ctermfg=NONE ctermbg=234 cterm=NONE
hi Normal		ctermfg=249	ctermbg=NONE	cterm=NONE
hi Comment		ctermfg=239	ctermbg=NONE	cterm=NONE
hi Statement	ctermfg=108	ctermbg=NONE	cterm=NONE
hi Identifier	ctermfg=153	ctermbg=NONE	cterm=NONE
hi Special		ctermfg=179	ctermbg=NONE	cterm=NONE
hi Constant		ctermfg=130	ctermbg=NONE	cterm=NONE
hi Type		    ctermfg=39 	ctermbg=NONE	cterm=NONE
hi VertSplit    ctermfg=232	ctermbg=239 	cterm=NONE
hi FoldColumn   ctermfg=241	ctermbg=234 	cterm=NONE
hi Folded       ctermfg=241	ctermbg=234 	cterm=NONE
hi Search		ctermfg=255	ctermbg=90      cterm=NONE
hi Title        ctermfg=124 ctermbg=NONE    cterm=bold
hi Underlined   ctermfg=88  ctermbg=NONE    cterm=underline

hi StatusLine   ctermfg=fg  ctermbg=232     cterm=NONE
hi StatusLineNC ctermfg=239 ctermbg=232     cterm=NONE

hi User1        ctermfg=fg  ctermbg=232
hi User2        ctermfg=130 ctermbg=232

hi DiffText     ctermbg=1 ctermfg=7
hi DiffChange   ctermbg=2 ctermfg=0
hi PreProc      ctermfg=110

hi Todo         ctermfg=red ctermbg=NONE

hi link vimVar          Identifier
hi link vimFunction     Function
hi link vimOption       Identifier
hi link vimGroupName    Identifier
hi link String          Constant

hi twikiBulletedList     ctermfg=9
hi twikiOrderedList      ctermfg=9
hi twikiDelimiter        ctermfg=9
hi twikiHeadingMarker    ctermfg=9

" GUI COLORS
"hi Comment      guifg=grey45
"hi Folded       guifg=grey60    guibg=grey20
"hi Function     guifg=#1E9600
"
"hi String       guifg=#BA9B52
"hi Normal       guifg=grey80    guibg=grey15
"hi Cursor                       guibg=lightgreen
"hi Type         guifg=darkkhaki                     gui=none 
"hi Statement    guifg=khaki     ctermfg=185         gui=none
""hi Identifier   guifg=#006CC1
"hi Identifier   guifg=#5494E8
""hi Identifier   guifg=#22B5D6
""hi Constant     guifg=#41B000
"hi Constant     guifg=darkcyan


" ---
"  OLD STUFF!
"
" Get some better colors
"highlight Normal guibg=grey80
"highlight Cursor guibg=Blue guifg=NONE
"highlight NonText guibg=grey80
"highlight Constant gui=None guifg=lightsalmon4 guibg=grey80
"guibg=grey86
"guibg=grey88
"highlight Title gui=Bold guifg=DarkGreen guibg=grey89
"highlight Special gui=Bold guibg=grey80
"highlight DiffDelete guifg=grey88 guibg=grey80
"highlight DiffAdd gui=Bold guifg=DarkGreen guibg=grey84
"highlight DiffChange gui=None guifg=DarkGreen guibg=grey84
"highlight DiffText gui=Bold guifg=DarkGreen guibg=yellow
"highlight VertSplit gui=None guifg=Red guibg=grey90
"
"hi PreProc  guifg=SeaGreen gui=bold
"hi Constant term=underline ctermfg=1 guifg=lightsalmon4 guibg=grey80
"
"
"" Comments
"hi Comment ctermfg=blue
