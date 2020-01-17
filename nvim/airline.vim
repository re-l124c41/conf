"*****************************************************************************
"" Airline-customization*
"*****************************************************************************
 let g:airline#extensions#tabline#enabled = 1                                  " Displays all buffers when there's only one tab open.
" let g:airline#extensions#tabline#buffer_idx_mode = 1                          " Enable/disable displaying INDEX of the buffer. 
 let g:airline#extensions#tabline#buffer_nr_show = 1                           " Enable/disable displaying NUMBER of the buffer. 
 let g:airline#extensions#syntastic#enabled = 1                                " Enable syntastic integration
 let g:airline#extensions#tagbar#enabled = 1                                   " Enable/disable tagbar integration
 let g:airline#extensions#branch#enabled = 1                                   " Enable/disable fugitive/lawrencium integration
 let g:airline#extensions#whitespace#enabled = 0                               " Enable/disable detection of whitespace errors.
 let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing', 'long' ] " Configure which whitespace checks to enable.
 let g:airline#extensions#whitespace#max_lines = 20000                         " Maximum number of lines where whitespace checking is enabled.
 let g:airline#extensions#whitespace#show_message = 1                          " Configure whether a message should be displayed.
 let g:airline#extensions#whitespace#symbol = '⎵'                              " Customize the whitespace symbol.
 let g:airline#extensions#whitespace#trailing_format = 'trailing[%s]'          " ⎫
 let g:airline#extensions#whitespace#mixed_indent_format = 'mixed-indent[%s]'  " ⎬ Configure the formatting of the warning messages.
 let g:airline#extensions#whitespace#long_format = 'long[%s]'                  " ⎭
 let g:airline#extensions#tagbar#flags = 'f'                                   " Change how tags are displayed (:help tagbar-statusline)
 let g:airline_detect_modified=1                                               " Enable modified detection
 let g:airline_detect_paste=1                                                  " Enable paste detection
 let g:airline_detect_crypt=1                                                  " Enable crypt detection
 let g:airline_detect_iminsert=0                                               " Enable iminsert detection
 let g:airline_inactive_collapse=1                                             " Collapse airline in inactive windows to only the filename.

" Every section is composed of parts, and you can reorder and reconfigure them at will.
function! AirLineInit()
  let g:airline_section_a = airline#section#create(['mode', ' '])
  let g:airline_section_b = airline#section#create_left(['branch', 'hunks'])
  let g:airline_section_c = airline#section#create_left(['%t'])
  let g:airline_section_d = airline#section#create([''])
endfunction
autocmd VimEnter * call AirLineInit()

" Automatically populate the g:airline_symbols dictionary with the powerline symbols
 let g:airline_powerline_fonts = 1

" The following are some unicode symbols for customizing the left/right
" separators, as well as the powerline font glyphs.
" Note: You must define the dictionary first before setting values. Also, it's a
" good idea to check whether it exists as to avoid accidentally overwriting
" its contents.

" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif

" Configure separators for the tabline only. >
 let g:airline#extensions#tabline#right_sep = ''
 let g:airline#extensions#tabline#right_alt_sep = ''
 let g:airline#extensions#tabline#left_sep = ''
 let g:airline#extensions#tabline#left_alt_sep = ''

" Dictionary for symbols
let g:airline_symbols = {}
" Unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = '⮂'

" powerline symbols
 let g:airline_left_sep = ''
 let g:airline_left_alt_sep = ''
 let g:airline_right_sep = ''
 let g:airline_right_alt_sep = ''
 let g:airline_symbols.branch = ''
 let g:airline_symbols.readonly = ''
 let g:airline_symbols.linenr = ''
 let g:airline_symbols.crypt = '' "'⚷'

" old vim-powerline symbols
" let g:airline_left_sep = '⮀'
" let g:airline_left_alt_sep = '⮁'
" let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
" let g:airline_symbols.branch = '⭠'
" let g:airline_symbols.readonly = '⭤'
" let g:airline_symbols.linenr = '⭡'
