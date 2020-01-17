"*****************************************************************************
"" Deoplete settings
"*****************************************************************************

" Python 3 provider configuration
 let g:python3_host_prog = 'python'

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
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

" Tab:
" Vim uses Ctrl-n (next item) and Ctrl-p (previous item),
" Ctrl-y (accept match) or Ctrl-e (cancel) and so on for completion.
" See :h ins-completion-menu and :h popupmenu-keys for details.
"  use <tab> for completion
function! TabWrap()
    if pumvisible()
        return "\<C-N>"
    elseif neosnippet#expandable_or_jumpable()
        return "\<Plug>(neosnippet_expand_or_jump)"
    elseif strpart( getline('.'), 0, col('.') - 1 ) =~ '^\s*$'
        return "\<tab>"
    else
        return deoplete#mapping#_complete()
    endif
endfunction


" SuperTab like snippets behavior.
imap <silent><expr><TAB> TabWrap()
smap <silent><expr><TAB> TabWrap()

" Enter: close popup with <CR> and insert candidate mapped to <C-y>.
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Escape: exit autocompletion, go to Normal mode
inoremap <silent><expr> <Esc> pumvisible() ? "<C-e><Esc>" : "<Esc>"

" For conceal markers.
if has('conceal')
  set conceallevel=1 concealcursor=niv
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" It is a dictionary to decide use source names.  The key is
" filetype and the value is source names list.  If the key is
" "_", the value will be used for default filetypes.  For
" example, you can load some sources in C++ filetype.
" If the value is [], it will load all sources.
"
" Default value: {}
" values ['file', 'omni', 'tag', 'buffer'],
call deoplete#custom#option('sources', {
 \ '_': [],
\ 'java': ['javacomplete2', 'file', 'buffer'],
\})

let g:loaded_adsffssdf = 1
" If it is zero, deoplete collects keywords from buffers of any filetype
let g:deoplete#buffer#require_same_filetype = 0

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory="$HOME/.config/nvim/plugged/vim-snippets/snippets/"

