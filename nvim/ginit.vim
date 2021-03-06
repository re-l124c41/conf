"" Force system language to en
set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
language en                 " sets the language of the messages / ui (vim)


"*****************************************************************************
" Neovim-Qt GUI settings must be placed in ginit.vim file.
"*****************************************************************************

"{{{ Gui-settnigs

" Starts in fullscreen, Maximized should work too (untested)
call GuiWindowMaximized(1)

" Disable GUI Tabline
GuiTabline 0

" Disable GUI PopUP
GuiPopupmenu 0

" Set font on start
" variable setting not working for some reason.
" let g:Guifont='Source Code Pro:h10'
Guifont! Space\ Mono\ for\ Powerline:h10

" set colorscheme
colorscheme jellybeans
set bg=dark

"" Status line settings
" show statusline
set laststatus=2

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

" Use modeline overrides
set modeline
set modelines=10

" Set title
set title
set titleold="Terminal"
set titlestring=%F


" To fix statusline rendering issue.
" for version older than 2016/05/11 use:
" set termguicolors
" source:
" https://github.com/equalsraf/neovim-qt/issues/164#issuecomment-240717211
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 
let $TERM='screen-256color'

" If vim-bufferline is printing to the statusline as well as the command bar
" you can disable automatic echoing
"let g:bufferline_echo = 0

"}}}
