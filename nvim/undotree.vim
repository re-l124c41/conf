"*****************************************************************************
"" Undotree settings
"*****************************************************************************

"" Change window layout to make Undotree appear to the right
let g:undotree_WindowLayout=3

"" Set the undotree window width.
let g:undotree_SplitWidth=40

"" Change diff panel height default=10
let g:undotree_DiffpanelHeight=15

"" Autofocus opened Undotree window
let g:undotree_SetFocusWhenToggle=1

"" Set to 0 to hide "Press ? for help".
let g:undotree_HelpLine=0

" Define the callback function g:Undotree_CustomMap() to change default key
" mappings. 
" The function will be called after the undotree windows is initialized, so the
" key mappings only works on the undotree windows.
function g:Undotree_CustomMap()
  nmap <buffer> k <plug>UndotreeGoNextState
  nmap <buffer> j <plug>UndotreeGoPreviousState
  nmap <buffer> K <plug>UndotreeGoNextSaved
  nmap <buffer> J <plug>UndotreeGoPreviousSaved
  nmap <buffer> r <plug>UndotreeRedo
  nmap <buffer> u <plug>UndotreeUndo
  nmap <buffer> d <plug>UndotreeDiffToggle
endfunc

