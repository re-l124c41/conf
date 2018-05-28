"*****************************************************************************
"" Syntastic common settings.
"*****************************************************************************
"
" Syntastic has numerous options that can be configured, and the defaults are not particularly
" well suitable for new users. It is recommended that you start by adding the following lines
" te your vimrc file, and return to them after reading the manual (see :help syntastic in Vim):

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
 
"" Enable project related config file for javac
" class path will be read from let g:syntastic_java_javac_classpath = in
" corresponding config file

" let g:syntastic_java_checkers=['javac']
" let g:syntastic_java_javac_config_file_enabled = 1

let g:syntastic_groovy_checkers=['groovyc']
let g:syntastic_groovy_groovyc_config_file_enabled = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
