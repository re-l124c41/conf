"*****************************************************************************
" Neovim-Qt GUI settings must be placed in ginit.vim file.
"*****************************************************************************

"{{{ Gui-settnigs

" Starts in fullscreen, Maximized should work too (untested)
  call GuiWindowFullScreen(1)

" Set font on start
" variable setting not working for somw reason.
" let g:Guifont='Source Code Pro:h10'
  Guifont Source\ Code\ Pro:h10

" set colorscheme
  colorscheme Atelier_SavannaDark
  set bg=dark

" show statusline
  set laststatus=2

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

" If vim-bufferline is printing to the statusline as well as the command bar
" you can disable automatic echoing
  let g:bufferline_echo = 0

"}}}
