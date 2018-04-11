"*****************************************************************************
"" VimPlug settings
"*****************************************************************************
call plug#begin('~/.config/nvim/plugged')

"" Make sure you use single quotes

Plug 'whatyouhide/vim-gotham'
Plug 'glortho/feral-vim'
Plug 'kocakosm/hilal'
Plug 'croaker/mustang-vim'
Plug 'widatama/vim-phoenix'
Plug 'beigebrucewayne/skull-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'sjl/badwolf'

"" 1}}}

"" Superior Lisp Interaction Mode for Vim ("SLIME for Vim")
Plug 'kovisoft/slimv'

"" Syntax file for the groovy programming language
Plug 'vim-scripts/groovy.vim'

"" Indent script for groovy programming language
Plug 'vim-scripts/groovyindent-unix'

"" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'

"" Find And Replace Vim plugin
Plug 'brooth/far.vim'

"" The purpose of this project is to maintain missing Gradle capabilities in Vim.
Plug 'gisphm/vim-gradle'

"" A simple, easy-to-use Vim alignment plugin. 
Plug 'junegunn/vim-easy-align'

"" neo-snippet plugin contains neocomplcache snippets source
Plug 'Shougo/neosnippet.vim'

"" The standard snippets repository for neosnippet
Plug 'Shougo/neosnippet-snippets'

"" This repository contains snippets files for various programming languages.
Plug 'honza/vim-snippets'

"" Dark powered asynchronous completion framework for neovim
Plug 'Shougo/deoplete.nvim'

"" Interactive command execution in Vim.
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

""Syntax checking plugin.
Plug 'scrooloose/syntastic'

"" The NERD tree allows you to explore your filesystem and to open files and directories.
"" It presents the filesystem to you in the form of a tree which you manipulate with the keyboard and/or mouse.
"" It also allows you to perform simple filesystem operations.
Plug 'scrooloose/nerdtree'

""A Vim plugin which shows a git diff in the 'gutter' (sign column).
""It shows whether each line has been added, modified, and where lines have been removed.
""You can also stage and revert individual hunks.
Plug 'airblade/vim-gitgutter'

"" fugitive.vim
"" I'm not going to lie to you; fugitive.vim may very well be the best Git wrapper of all time.
Plug 'tpope/vim-fugitive'

"" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
"" The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plug 'tpope/vim-surround'

"" The ultimate undo history visualizer for VIM
Plug 'mbbill/undotree'

"" Simple color selector/picker plugin for Vim.
Plug 'KabbAmine/vCoolor.vim'
 
"" Vebugger is yet another debugger frontend plugin for Vim, created because
"" I wasn't happy with the other debugger plugins I found. Vebugger currently supports:
Plug 'idanarye/vim-vebugger'

" Add plugins to &runtimepath
call plug#end()


"" Tags settings.
" When a tag file name starts with "./", the '.' is replaced with the path of
" the current file. This makes it possible to use a tags file in the directory
" where the current file is (no matter what the current directory is).
" The idea of using "./" is that you can define which tag file is searched
" first: In the current directory ("tags,./tags") or in the directory of the
" current file ("./tags,tags").

"set tags=./tags;,tags;,$HOME

"" Python settings
" To point Nvim to a specific Python 3 interpreter, set |g:python3_host_prog|:

let g:python3_host_prog = '/usr/bin/python3'

"" Key remaps
" Easier split navigations
" We can use different key mappings for easy navigation between splits to save
" a keystroke. So instead of ctrl-w then j, it’s just ctrl-j:
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" The following commands map the 'j' key to execute 'gj' and the 'k' key to
" execute 'gk'. These are useful for moving between long wrapped lines.
nnoremap k gk
nnoremap j gj

" Map <C-[> to <C-T> aka :pop command to navigate between tags with <C-]> and
" <C-[>
nmap <C-[> <C-T>

" Search for selected text, forwards or backwards.
" Stolen from http://vim.wikia.com/wiki/Search_for_visually_selected_text
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>


"" Visual Settings
set t_Co=256 " Enable 256 colors supprot for airline colors.
set diffopt=vertical

"TAB and indent settings
 set expandtab     " always uses spaces instead of tab characters
 set smarttab      " make tab insert indents instead of tabs at the beginning of a line
 set tabstop=3     " size of a hard tabstop
 set shiftwidth=3  " size of an indent
" set softtabstop=3 " a combination of spaces and tabs are used to simulate tab stops at a width other than the (hard)tabstop
 syntax on         " enable syntax coloring
 set number        " set ruler
 let no_buffers_menu=1
 set mousemodel=popup
 set cursorline    " highlight current cursor line

autocmd vimenter * set foldmethod=indent "fold lines by indentation

"" Undo history settings
set undofile
set undodir=$HOME/.config/nvim/.undodir


"" Source plugins settings
 source $HOME/.config/nvim/airline.vim     " Aitline
 source $HOME/.config/nvim/deoplete.vim    " Doplete
 source $HOME/.config/nvim/nerdtree.vim    " NERDTree
 source $HOME/.config/nvim/syntastic.vim   " Syntastic
 source $HOME/.config/nvim/easyalign.vim   " Vim Easy Align
 source $HOME/.config/nvim/nerdfont.vim    " Nerd Fonts
 source $HOME/.config/nvim/undotree.vim    " Undotree config
