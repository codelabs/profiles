"vim:set ft=vim:ts=4:sts=4:

set background=dark
set t_Co=256

hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "dileep"

" Color Codes
" 0 - Black           8 - Dark Grey
" 1 - Red             9 - Light Red
" 2 - Green          10 - Light Green
" 3 - Yellow         11 - Light Yellow
" 4 - Blue           12 - Violet or Purple
" 5 - Magenta        13 - Light Magenta or Pink
" 6 - Cyan           14 - Light Cyan
" 7 - Light Grey     15 - White

" vim >= 7.0 specific
if version >= 700
    hi CursorLine ctermfg=NONE ctermbg=234 cterm=NONE guibg=#3c3c3c
    hi CursorColumn guibg=#3c3c3c ctermbg=237
endif

hi Comment    ctermfg=8
hi Boolean    ctermfg=113
hi String     ctermfg=108 cterm=bold
hi Identifier ctermfg=140 cterm=bold
hi Type       ctermfg=178
hi Statement  ctermfg=9 cterm=bold
hi Keyword    ctermfg=209 cterm=bold
hi Constant   ctermfg=6
hi Number     ctermfg=209 cterm=bold
hi Special    ctermfg=1
hi PreProc    ctermfg=5 cterm=bold
hi TODO       ctermfg=0 ctermbg=3 cterm=NONE

hi LineNr     ctermfg=239
hi Normal     ctermfg=15
hi Operator   ctermfg=2 cterm=bold term=underline
hi Search     ctermfg=Black      ctermbg=Red     cterm=NONE
hi ExtraWhitespace ctermbg=darkred guibg=darkred

hi Folded       guifg=#37c6e5 ctermfg=80 guibg=#3c3c3c ctermbg=237 gui=none

" Vim stuff

hi link vimVar          Identifier
hi link vimFunction     Function
hi link vimOption       Identifier
hi link vimGroupName    Identifier
hi link String          Constant


