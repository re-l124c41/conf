"" Force system language to en
set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
language en                 " sets the language of the messages / ui (vim)

"*****************************************************************************
"" VimPlug settings
"*****************************************************************************

call plug#begin('~/.config/nvim/plugged')
    "" Make sure you use single quotes
    
    "" Colorschemes  
    "  License: MIT
    Plug 'whatyouhide/vim-gotham'

    "  License: none
    Plug 'glortho/feral-vim'

    "  License: none
    Plug 'widatama/vim-phoenix'
    
    "  License: MIT
    Plug 'arcticicestudio/nord-vim'
   
    "  License: none
    Plug 'trustfarm/jellybeans.vim'

    "  License: MIT
    Plug 'sjl/badwolf'
    
    "  License: Apache 2.0
    Plug 'mhartington/oceanic-next'

    "" Colorschemes END

    "" Coc is an intellisense engine for Vim/Neovim with VS Code LSC support. 
    "  License: MIT
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    "" Syntax file for the groovy programming language
    Plug 'vim-scripts/groovy.vim', { 'for': 'groovy' }

    "" Indent script for groovy programming language
    Plug 'vim-scripts/groovyindent-unix', { 'for': 'groovy' }

    "" The purpose of this project is to maintain missing Gradle capabilities in Vim.
    "  License: none
    Plug 'gisphm/vim-gradle', { 'for': 'gradle' }

    "" Dark powered asynchronous completion framework for neovim
    "  License: MIT
    "Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

    "" neo-snippet plugin contains neocomplcache snippets source
    "  License: MIT
    "Plug 'Shougo/neosnippet.vim'

    "" The standard snippets repository for neosnippet
    "  License: MIT
    "Plug 'Shougo/neosnippet-snippets'

    "" This repository contains snippets files for various programming languages.
    "  License: MIT
    "Plug 'honza/vim-snippets'

    "" Lean & mean status/tabline for vim that's light as air.
    "  License: MIT
    Plug 'vim-airline/vim-airline'

    "" Find And Replace Vim plugin
    "  License: MIT
    Plug 'brooth/far.vim'

    "" A simple, easy-to-use Vim alignment plugin. 
    "  License: MIT
    Plug 'junegunn/vim-easy-align'

    "" The NERD tree allows you to explore your filesystem and to open files and directories.
    "  It presents the filesystem to you in the form of a tree
    "  which you manipulate with the keyboard and/or mouse.
    "  It also allows you to perform simple filesystem operations.
    "  License: Do What The F*ck You Want To Public License
    Plug 'scrooloose/nerdtree'

    "" NERD Commenter
    "  Comment functions so powerful—no comment necessary
    "  License: Do What The F*ck You Want To Public License
    Plug 'scrooloose/nerdcommenter'

    "" Git wrapper for vim
    "  License: VIM
    Plug 'tpope/vim-fugitive'

    "" The plugin provides mappings to easily delete, change and add such surroundings in pairs.
    "  License: VIM
    Plug 'tpope/vim-surround'

    "" The ultimate undo history visualizer for VIM
    "  License: BSD
    Plug 'mbbill/undotree', { 'on': 'UndotreeShow' }

    "" Dadbod is a Vim plugin for interacting with databases.
    "  License: VIM
    Plug 'tpope/vim-dadbod'

    "" Red Language Syntax Highlighting
    "  License: none
    Plug 'rebolek/vim-red'

    "" Simple color selector/picker plugin for Vim.
    Plug 'KabbAmine/vCoolor.vim'

    "  Add plugins to runtimepath
call plug#end()


"" Load all separate configuration files for plugins
"
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/airline.vim
source $HOME/.config/nvim/easyalign.vim
"source $HOME/.config/nvim/deoplete.vim
source $HOME/.config/nvim/nerdtree.vim
source $HOME/.config/nvim/nerdcomment.vim
source $HOME/.config/nvim/dabod.vim
autocmd! User undotree.vim source $HOME/.config/nvim/undotree.vim

""
"" For windows only!
""set shell=C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe
set shell=powershell
set shellcmdflag=\ -c
" With shellquote set to \" shell just returns entered string and not
" executing anything
set shellquote=
set shellxquote=

""
"" Python settings
"  To point Nvim to a specific Python 3 interpreter, set |g:python3_host_prog|:
let g:python3_host_prog = 'C:\Python38\python.exe'

""
"" Node.js settings
"  To point Nvim to a specific node interpreter, set |g:node_host_prog|:
"let g:node_host_prog = 'C:\Program Files\nodejs\node.exe'

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

" :term[inal] - opens new buffer with intercatcive terminal
" map <Esc> to exit terminal mode
tnoremap <Esc> <C-\><C-n>

"" Visual Settings
set t_Co=256 " Enable 256 colors supprot for airline colors.
"" Set vim to use internal diffopt with better algorithm
set diffopt=filler,internal,algorithm:histogram,indent-heuristic
"  set colorscheme
colorscheme jellybeans
" always show signcolumns
set signcolumn=yes
" clear bg color of Signcolumn
highlight clear Signcolumn


"TAB and indent settings
set expandtab        " always uses spaces instead of tab characters
set smarttab         " make tab insert indents instead of tabs at the beginning of a line
set tabstop=4        " size of a hard tabstop
set shiftwidth=4     " size of an indent
syntax on            " enable syntax coloring
set number           " set ruler
set mousemodel=popup " set function for right mouse button
set cursorline       " highlight current cursor line

 
"" Status line settings
set laststatus=2                                " show statusline
set statusline=%t                               " tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, " file encoding
set statusline+=%{&ff}]                         " file format
set statusline+=%h                              " help file flag
set statusline+=%m                              " modified flag
set statusline+=%r                              " read only flag
set statusline+=%y                              " filetype
set statusline+=%=                              " left/right separator
set statusline+=%c,                             " cursor column
set statusline+=%l/%L                           " cursor line/total lines
set statusline+=\ %P                            " percent through file


"" Fild settings
"  Fold lines by indentation
autocmd VimEnter * set foldmethod=indent 
"  Open file and unfold all
autocmd BufRead * normal zR

"" Undo history settings
set undofile
set undodir=$HOME/.config/nvim/.undodir
