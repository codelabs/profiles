" My Filetypes

if exists("did_load_filetypes")
    finish
endif


augroup filetypedetect

    " Perl stuff
    au! BufRead,BufNewFile *.pl     setfiletype perl
    au! BufRead,BufNewFile *.PL     setfiletype perl
    au! BufRead,BufNewFile *.pm     setfiletype perl
    au! BufRead,BufNewFile *.t      setfiletype perl
    au! BufRead,BufNewFile *.cgi    setfiletype perl

    " YICF
    au! BufRead,BufNewFile *.yicf   setfiletype yinst

    " CONF File
    au! BufRead,BufNewFile *.conf   setfiletype apache

    " Template Toolkit
    "au! Syntax ttkit  source syntax/tt2html
    "au! Syntax ttkit2 source syntax/tt2

    au BufNewFile,BufRead *.tt2 call s:AdjustTT2Type() 
    au BufNewFile,BufRead *.tt  call s:AdjustTT2Type() 


    " TMPL (TWiki HTML templates)
    au! BufNewFile,BufRead *.tmpl    setfiletype html

    " Twiki
    au! Syntax twiki source ~deduri/.vim/syntax/twiki.vim

augroup END

func! s:AdjustTT2Type() 
    if ( getline(1) . getline(2) . getline(3) =~ '<\chtml' && getline(1) . getline(2) . getline(3) !~ '<[%?]' )  || getline(1) =~ '<!DOCTYPE HTML' 
        setf tt2html 
    else 
        setf tt2 
    endif 
endfunc 


