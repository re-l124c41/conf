""*****************************************************************************
"NERDTree indicator configuration
""*****************************************************************************
"Open a NERDTree automatically when vim starts up?
 autocmd VimEnter * NERDTree

"Open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Show bookemarks table
let g:NERDTreeShowBookmarks = 1

" If set to 1, Bookmarks will be specially marked whenever the NERDTree is rendered.
let g:NERDTreeMarkBookmarks = 1

" Auto centr when scrolling
let g:NERDTreeAutoCenter = 1

" Change CWD when NERDTree root changed
let g:NERDTreeChDirMode = 2

" This option is used to change the size of the NERD tree when it is loaded.
let g:NERDTreeWinSize = 31

" Arrows
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'

"Use this variable to change symbols.
let g:NERDTreeIndicatorMapCustom = {
  \ "Modified"  : "✹",
  \ "Staged"    : "✚",
  \ "Untracked" : "✭",
  \ "Renamed"   : "➜",
  \ "Unmerged"  : "═",
  \ "Deleted"   : "✖",
  \ "Dirty"     : "✗",
  \ "Clean"     : "✔︎",
  \ "Unknown"   : "?"
  \ }
" use double-width(1) or single-width(0) glyphs 
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0

" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" For conditional bookmarks per directory
" if isdirectory(expand(".git"))
"    let g:NERDTreeBookmarksFile = '.git/.nerdtree-bookmarks'
" endif
