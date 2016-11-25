"*****************************************************************************
"" Thematic
"*****************************************************************************

"*****************************************************************************
" To curb redundancy among your themes, you can specify a dictionary of default values, to be shared by all of your themes:
let g:thematic#defaults = {
\ 'airline-theme': 'jellybeans',
\ 'background': 'dark',
\ 'laststatus': 2,
\ }
"*****************************************************************************

"*****************************************************************************
" Configure your themes here:
let g:thematic#themes = {
\ 'gotham'  : {
\   'colorscheme': 'gotham',
\   'laststatus': 2,
\   'airline-theme': 'gotham',
\ },
\ 'badwolf'  : {
\   'colorscheme': 'badwolf',
\   'laststatus': 2,
\   'airline-theme': 'badwolf',
\   'ruler': 1,
\   'transparency': 0,
\   'linespace': 8,
\   'fullscreen': 1,
\   'fullscreen-background-color-fix': 1
\ },
\ 'SpinkRaven'  : {
\   'colorscheme': 'Spink',
\   'laststatus': 2,
\   'airline-theme': 'raven',
\   'ruler': 1,
\   'typeface': 'Source Code Pro',
\   'font-size': 15,
\   'transparency': 0,
\   'linespace': 8,
\   'fullscreen': 1,
\   'fullscreen-background-color-fix': 1
\ },
\ 'feral'  : {
\   'colorscheme': 'feral',
\   'laststatus': 2,
\   'airline-theme': 'base16_atelierdune',
\   'ruler': 1,
\   'transparency': 0,
\   'linespace': 8,
\   'fullscreen': 1,
\   'fullscreen-background-color-fix': 1
\ },
\ 'TNE'  : {
\   'colorscheme': 'badwolf',
\   'laststatus': 2,
\   'airline-theme': 'Tomorrow-Night-Eighties',
\ },
\}
"*****************************************************************************

let g:thematic#theme_name = 'SpinkRaven'

" 'ruler' (0 or 1) - as alternative to status bar, shows minimal position details in lower right
" 'colorscheme' ('pencil', e.g.) - set the colors for all windows (optional if your theme name is the same as the colorscheme name)
" 'background' ('dark' or 'light') - colorschemes like pencil and solarized can be further configured via background
" 'airline-theme' ('jellybeans', e.g.) - plugin for theming your status bar
" 'sign-column-color-fix' (0 or 1) - temporarily modifies colorscheme to force gutter background to match Normal background
" 'diff-color-fix' (0 or 1) - temporarily modifies colorscheme to force diff character color to a standard red/green/yellow/blue
" 'fold-column-color-mute' (0 or 1) - temporarily modifies colorscheme to hide indicators, matching Normal text background
" 'number-column-color-mute' (0 or 1) - temporarily modifies colorscheme to hide numbers, matching Normal text background

" By default, thematic doesn’t initialize a theme when you start Vim.
" But you can have it do so by specifying a theme to load:
