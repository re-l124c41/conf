"*****************************************************************************
"" Deoplete settings
"*****************************************************************************

" Deoplete gets started automatically when Neovim starts if this value is 1.
 let g:deoplete#enable_at_startup = 1

" When deoplete looks for candidate completion, this
" variable controls whether deoplete ignores the upper-
" and lowercase.  If it is 1, deoplete ignores case
 let g:deoplete#enable_ignore_case = 1

" When a capital letter is included in input, deoplete does
" not ignore the upper- and lowercase.
 let g:deoplete#enable_smart_case = 1

" When a capital letter is matched with the uppercase, but a
" lower letter is matched with the upper- and lowercase.
" Ex: "foB" is matched with "FooBar" not "foobar".
" Note: This feature is only available in
" |deoplete-filter-matcher_fuzzy| or
" |deoplete-filter-matcher_full_fuzzy|.
 let g:deoplete#enable_camel_case = 1

" Plugin key-mappings.
 imap <C-k>     <Plug>(neosnippet_expand_or_jump)
 smap <C-k>     <Plug>(neosnippet_expand_or_jump)
 xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB>
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" Close popup with <CR> and insert candidate.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? deoplete#mappings#close_popup() : "\n"
endfunction


" For conceal markers.
if has('conceal')
  set conceallevel=1 concealcursor=niv
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
 let g:neosnippet#snippets_directory='/home/dperepelko/.config/nvim/plugged/vim-snippets/snippets/'

