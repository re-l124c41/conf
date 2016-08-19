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
 
 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0

