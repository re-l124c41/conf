"*****************************************************************************
"" IndentLine config.
"*****************************************************************************


"*****************************************************************************
" Change Character Color

" Vim
let g:indentLine_color_term = 239

"GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
"*****************************************************************************

"*****************************************************************************
" Change Indent Char where 'c' can be any ASCII character. 
" You can also use one of ¦, ┆, or │ to display more beautiful lines. 
" However, these characters will only work with files whose encoding is UTF-8.

" Vim and GVim
let g:indentLine_char = 'c'
"*****************************************************************************

"*****************************************************************************
"Change Conceal Behaviour

" Vim 7.3 has a new feature conceal to automatically hide a stretch of text based on syntax highlighting.

let g:indentLine_concealcursor = 'vc' "(default 'inc')
let g:indentLine_conceallevel = 2 "(default 2)
"*****************************************************************************
