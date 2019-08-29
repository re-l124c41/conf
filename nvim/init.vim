"*****************************************************************************
"" VimPlug settings
"*****************************************************************************

call plug#begin('~/.config/nvim/plugged')

"" Make sure you use single quotes

"  License: MIT
Plug 'whatyouhide/vim-gotham'

"  License: none
"  Plug 'glortho/feral-vim'

"  License: none
"  Plug 'widatama/vim-phoenix'

"  License: none
Plug 'trustfarm/jellybeans.vim'

"  License: MIT
Plug 'sjl/badwolf'


"" 1}}}

"" Superior Lisp Interaction Mode for Vim ("SLIME for Vim")
"  License: none
"  Plug 'kovisoft/slimv', { 'for': 'lisp' }

"" Vim syntax and language settings for RAM"
"  License: none
"  Plug 'IN3D/vim-raml' ", { 'for': 'groovy' }

"" Syntax file for the groovy programming language
Plug 'vim-scripts/groovy.vim', { 'for': 'groovy' }

"" Indent script for groovy programming language
Plug 'vim-scripts/groovyindent-unix', { 'for': 'groovy' }

"" Lean & mean status/tabline for vim that's light as air.
"  License: MIT
Plug 'vim-airline/vim-airline'

"" Find And Replace Vim plugin
"  License: MIT
Plug 'brooth/far.vim'

"" The purpose of this project is to maintain missing Gradle capabilities in Vim.
"  License: none
"  Plug 'gisphm/vim-gradle', { 'for': 'gradle' }

"" A simple, easy-to-use Vim alignment plugin. 
"  License: MIT
Plug 'junegunn/vim-easy-align'

"" Yet Another Remote Plugin Framework for Neovim
"  Deoplete depends on it
"  License: MIT
Plug 'roxma/nvim-yarp'

"" Dark powered asynchronous completion framework for neovim
"  License: MIT
  Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

"" NCM2, formerly known as nvim-completion-manager, is a slim, fast and hackable completion framework for neovim.
"  License: MIT
"Plug 'ncm2/ncm2'


"" neo-snippet plugin contains neocomplcache snippets source
"  License: MIT
Plug 'Shougo/neosnippet.vim'

"" The standard snippets repository for neosnippet
"  License: MIT
Plug 'Shougo/neosnippet-snippets'

"" This repository contains snippets files for various programming languages.
"  License: MIT
Plug 'honza/vim-snippets'

"" Interactive command execution in Vim.
"Plug 'Shougo/vimproc.vim', { 'do' : 'make' }

""" Updated version of the original javacomplete plugin for vim.
"  Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }
"  autocmd! User javacomplete.vim source $HOME/.config/nvim/java-complete.vim

"" The NERD tree allows you to explore your filesystem and to open files and directories.
"" It presents the filesystem to you in the form of a tree which you manipulate with the keyboard and/or mouse.
"" It also allows you to perform simple filesystem operations.
"  License: Do What The F*ck You Want To Public License
Plug 'scrooloose/nerdtree'

"" A Vim plugin which shows a git diff in the 'gutter' (sign column).
"" It shows whether each line has been added, modified, and where lines have been removed.
"" You can also stage and revert individual hunks.
"  License: MIT
Plug 'airblade/vim-gitgutter'

"" fugitive.vim
"" I'm not going to lie to you; fugitive.vim may very well be the best Git wrapper of all time.
"  License: VIM
Plug 'tpope/vim-fugitive'

"" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
"" The plugin provides mappings to easily delete, change and add such surroundings in pairs.
"  License: VIM
Plug 'tpope/vim-surround'

"" The ultimate undo history visualizer for VIM
"  License: BSD
Plug 'mbbill/undotree', { 'on': 'UndotreeShow' }

"" Dadbod is a Vim plugin for interacting with databases. It's a more modern take on dbext.vim
"  License: VIM
Plug 'tpope/vim-dadbod'

"" Red Language Syntax Highlighting
"  License: none
"  Plug 'rebolek/vim-red'

"" Simple color selector/picker plugin for Vim.
"Plug 'KabbAmine/vCoolor.vim'

"" Typescript syntax files for Vim 
"Plug 'leafgarland/typescript-vim'

"" A Vim plugin for TypeScript http://www.vim.org/scripts/script.php…
"Plug 'Quramy/tsuquyomi'
 
"" Vebugger is yet another debugger frontend plugin for Vim
"Plug 'idanarye/vim-vebugger'

"" Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box. 
"  License: GNU Lesser General Public License v3.0
" Plug 'python-mode/python-mode', { 'branch': 'develop' }

"  Add plugins to &runtimepath
call plug#end()


"" Load all separate configuration files for plugins
"
" source $HOME/.config/nvim/ncm2.vim
source $HOME/.config/nvim/airline.vim
source $HOME/.config/nvim/easyalign.vim
source $HOME/.config/nvim/deoplete.vim
source $HOME/.config/nvim/nerdtree.vim
source $HOME/.config/nvim/dabod.vim
autocmd! User undotree.vim source $HOME/.config/nvim/undotree.vim


""
"  Enable filetype plugins
filetype plugin on

"" Tags settings.
"  When a tag file name starts with "./", the '.' is replaced with the path of
"  the current file. This makes it possible to use a tags file in the directory
"  where the current file is (no matter what the current directory is).
"  The idea of using "./" is that you can define which tag file is searched
"  first: In the current directory ("tags,./tags") or in the directory of the
"  current file ("./tags,tags").

set tags=./.tags;,./tags;,tags;,$HOME

"" Python settings
"  To point Nvim to a specific Python 3 interpreter, set |g:python3_host_prog|:

let g:python3_host_prog = '/usr/bin/python3'

"" Key remaps
"  Easier split navigations
"  We can use different key mappings for easy navigation between splits to save
"  a keystroke. So instead of ctrl-w then j, it’s just ctrl-j:
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

"  The following commands map the 'j' key to execute 'gj' and the 'k' key to
"  execute 'gk'. These are useful for moving between long wrapped lines.
nnoremap k gk
nnoremap j gj

"  Map <C-[> to <C-T> aka :pop command 
"  navigate between tags with <C-]> and <C-[>
nmap <C-[> <C-T>

"  Search for selected text, forwards or backwards.
"  Stolen from http://vim.wikia.com/wiki/Search_for_visually_selected_text
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

" Map <Esc> to exit terminal mode
" :term[inal] - opens new buffer with intercatcive terminal
tnoremap <Esc> <C-\><C-n>

"" Visual Settings
set t_Co=256 " Enable 256 colors supprot for airline colors.
"" Set vim to use internal diffopt with better algorithm
set diffopt=filler,internal,algorithm:histogram,indent-heuristic
"  set colorscheme
colorscheme jellybeans

"TAB and indent settings
 set expandtab     " always uses spaces instead of tab characters
 set smarttab      " make tab insert indents instead of tabs at the beginning of a line
 set tabstop=4     " size of a hard tabstop
 set shiftwidth=4  " size of an indent
"  set softtabstop=3 " a combination of spaces and tabs are used to simulate tab stops at a width other than the (hard)tabstop
 syntax on         " enable syntax coloring
 set number        " set ruler
 let no_buffers_menu=1
 set mousemodel=popup
 set cursorline    " highlight current cursor line

 
"" Status line settings
"  show statusline
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


"" Fild settings
"  Fold lines by indentation
autocmd vimenter * set foldmethod=indent 
"  Open file and unfold all
autocmd BufRead * normal zR

"" Undo history settings
set undofile
set undodir=$HOME/.config/nvim/.undodir
