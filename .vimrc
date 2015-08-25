
set encoding=utf-8
set nu
set numberwidth=5
set title
set iskeyword+=:
set ts=4
"set textwidth=150
syn sync fromstart

" Indentation

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

" Search

set smartcase

" History

set history=50

" Matching braces, brackets

set showmatch

" Status Bar

set showmode
set laststatus=2
set ruler
set showcmd
"set statusline=%F%m%r%h%w\ (%{&ff}){%y}[%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%Y/%m/%d-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ line:%l\,%L\ %P
"set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%Y/%m/%d-%H:%M\")}%=\ [line:%l,col:%v,pos:%o,buffer:%L][%P]
"set statusline=%<%f%h%m%r%h%w%y\ =\ [line:%l,col:%v,pos:%o,buffer:%L][%P]
"set statusline=%<%f%h%m%r%h%w%y\ =\ [line:%l,col:%v,pos:%o,buffer:%L][%P]
let next_status=1

" Cursor Line

set cursorline

" My Colors or Syntax Highlighting

syntax on
"let perl_include_pod = 1
let perl_extended_vars = 1
let want_scope_in_variables = 1

colorscheme dileep

" Auto Commands

autocmd Syntax * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd Syntax * match TODO /TODO:/
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" Load Skeletons

autocmd BufNewFile *.pl 0r ~/vim/skeleton.pl
autocmd BufNewFile *.pm 0r ~/vim/skeleton.pm

" Syntax check for perl files when <F1> is pressed
autocmd FileType perl map <F1> :!/usr/local/bin/perl -c %<Return>

" Show perldoc for selected perl function
nnoremap <buffer> <silent> _f :!perldoc -f <cword><Enter>

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set foldlevel=1
let perl_fold = 1
"set nofoldenable        "dont fold by default

" Directory Listing
let g:netrw_list_hide='^\.,\~$'
let g:netrw_winsize=20


function! PerlDoc()
    normal yy
    let l:this = @
    if match(l:this, '^ *\(use\|require\) ') >= 0
        exe ':new'
        exe ':resize'
        let l:this = substitute(l:this, '^ *\(use\|require\) *', "", "")
        let l:this = substitute(l:this, ";.*", "", "")
        let l:this = substitute(l:this, " .*", "", "")
        exe ':0r!perldoc -t ' . l:this
        exe ':0'
        return
    endif
    normal yiw
    exe ':new'
    exe ':resize'
    exe ':0r!perldoc -t -f ' . @
    exe ':0'
endfunction

"Display docs for built-in functions when cursor is on function name
"or for modules when cursor is on 'use' or 'require' line.
map ,h :call PerlDoc()<CR>:set nomod<CR>:set filetype=man<CR>:echo "perldoc"<CR>

" Spell Suggest
set spellsuggest=best

