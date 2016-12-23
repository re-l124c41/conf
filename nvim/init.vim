"*****************************************************************************
"" VimPlug settings
"*****************************************************************************
call plug#begin('~/.config/nvim/plugged')

"" Make sure you use single quotes

" A TON of colorshemes.
Plug 'flazz/vim-colorschemes'

" Wery dark colorscheme.
Plug 'whatyouhide/vim-gotham'

" Conveniently manage Vim’s appearance to suit your task and environment
Plug 'reedes/vim-thematic'

"Extensible statusline plugin.
Plug 'bling/vim-airline'

" A collection of themes for vim-airline.
Plug 'vim-airline/vim-airline-themes'

" A simple, easy-to-use Vim alignment plugin. 
Plug 'junegunn/vim-easy-align'

" neo-snippet plugin contains neocomplcache snippets source
Plug 'Shougo/neosnippet.vim'

" The standard snippets repository for neosnippet
Plug 'Shougo/neosnippet-snippets'

" Dark powered asynchronous completion framework for neovim
Plug 'Shougo/deoplete.nvim'

" Interactive command execution in Vim.
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" This repository contains snippets files for various programming languages.
Plug 'honza/vim-snippets'

"Outline prowider.
Plug 'majutsushi/tagbar'

"Syntax checking plugin.
Plug 'scrooloose/syntastic'

"A Vim plugin which shows a git diff in the 'gutter' (sign column).
"It shows whether each line has been added, modified, and where lines have been removed.
"You can also stage and revert individual hunks.
Plug 'airblade/vim-gitgutter'

" The NERD tree allows you to explore your filesystem and to open files and directories.
" It presents the filesystem to you in the form of a tree which you manipulate with the keyboard and/or mouse.
" It also allows you to perform simple filesystem operations.
Plug 'scrooloose/nerdtree'

"Aplugin of NERDTree showing git status flags.
Plug 'Xuyuanp/nerdtree-git-plugin'

" fugitive.vim
" I'm not going to lie to you; fugitive.vim may very well be the best Git wrapper of all time.
Plug 'tpope/vim-fugitive'

" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
" The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plug 'tpope/vim-surround'

" Tabular.vim plugin, by Matt Wozniski, which makes it easy to align regions of text that match a pattern.
" Plug 'godlygeek/tabular'

" The ultimate undo history visualizer for VIM
Plug 'mbbill/undotree'

" Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
Plug 'Raimondi/delimitMate'

" Simple color selector/picker plugin for Vim.
Plug 'KabbAmine/vCoolor.vim'

" preview colours in source code while editing
Plug 'ap/vim-css-color'

" Join provides more powerful line join features than the build-in :join. 
Plug 'sk1418/Join'
 
" A pathogen installable module for VIM which readies VIM to be used as a Java
" development environment using the Maven build / dependency management system from Apache.
Plug 'JalaiAmitahl/maven-compiler.vim'

" Vebugger is yet another debugger frontend plugin for Vim, created because
" I wasn't happy with the other debugger plugins I found. Vebugger currently supports:
Plug 'idanarye/vim-vebugger'

" Add plugins to &runtimepath
call plug#end()

"*****************************************************************************
"" Python settings
"*****************************************************************************
"To point Nvim to a specific Python 3 interpreter, set |g:python3_host_prog|:
let g:python3_host_prog = '/usr/bin/python3'

"*****************************************************************************
"" Key remaps
"*****************************************************************************
"Easier split navigations
"We can use different key mappings for easy navigation between splits to save a keystroke. So instead of ctrl-w then j, it’s just ctrl-j:

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
set t_Co=256 " Enable 256 colors supprot for airline colors.
 

"TAB and indent settings
 set expandtab     " always uses spaces instead of tab characters
 set smarttab      " make tab insert indents instead of tabs at the beginning of a line
 set tabstop=2     " size of a hard tabstop
 set shiftwidth=2  " size of an indent
 set softtabstop=2 " a combination of spaces and tabs are used to simulate tab stops at a wid other than the (hard)tabstop
 syntax on         " enable syntax coloring
 set number        " set ruler
 let no_buffers_menu=1
 set mousemodel=popup
 set cursorline    " highlight current cursor line

" set gfn=Source\ Code\ Pro\ 10 font

" Neovim-qt Guifont command
 command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', "<args>") | let g:Guifont="<args>"
 Guifont Source\ Code\ Pro:h10

" Disable the blinking cursor.
 set gcr=a:blinkon0
 set scrolloff=3

" Use modeline overrides
 set modeline
 set modelines=10
 
 set title
 set titleold="Terminal"
 set titlestring=%F

 autocmd vimenter * set foldmethod=indent "fold lines by indentation

"*****************************************************************************
" Statusline settings (if airline installed must be set in its config).
" set statusline=%t       "tail of the filename
" set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
" set statusline+=%{&ff}] "file format
" set statusline+=%h      "help file flag
" set statusline+=%m      "modified flag
" set statusline+=%r      "read only flag
" set statusline+=%y      "filetype
" set statusline+=%=      "left/right separator
" set statusline+=%c,     "cursor column
" set statusline+=%l/%L   "cursor line/total lines
" set statusline+=\ %P    "percent through file

"*****************************************************************************
" To fix statusline rendering issue.
" for version older than 2016/05/11 use:
" set termguicolors
" source:
" https://github.com/equalsraf/neovim-qt/issues/164#issuecomment-240717211
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 

" If vim-bufferline is printing to the statusline as well as the command bar
" you can disable automatic echoing
let g:bufferline_echo = 0
"*****************************************************************************

"*****************************************************************************
"" Source plugins settings
"*****************************************************************************

 source /home/dperepelko/.config/nvim/thematicCfg.vim   " Thematic
 source /home/dperepelko/.config/nvim/deopleteCfg.vim   " Doplete
 source /home/dperepelko/.config/nvim/airLineCfg.vim    " AirLine
 source /home/dperepelko/.config/nvim/nerdTreeCfg.vim   " NERDTree
 source /home/dperepelko/.config/nvim/syntasticCfg.vim  " Syntastic
 source /home/dperepelko/.config/nvim/tagBarCfg.vim     " TagBar
 source /home/dperepelko/.config/nvim/viealCfg.vim      " Vim Easy Align
