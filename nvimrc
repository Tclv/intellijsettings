"" Plugins
call plug#begin('~/.nvim/plugged')
    Plug 'altercation/vim-colors-solarized'
    Plug 'sickill/vim-monokai'
    Plug 'benekastah/neomake'
call plug#end()

""" Editor settings
"" Line number/break configuration
set number 		" Line numbering
set cursorline          " Highlight current line
set linebreak		" Line breaking 
set showbreak=+++	" Set a character to indicate line breaks

"" Navigating through line breaks
nmap j gj
nmap k gk

"" Search configuration
set hlsearch		" Highlight searches
set ignorecase          " Ignore case when search
set smartcase		" Search case only when not-lower
set incsearch           " Highlight as typing query

"" Syntax and spelling
syntax enable		" Enables syntax highlighting
set spell		" Enables spell checking
colorscheme solarized
set background=dark

"" Indents and tabs
set autoindent		" Starts new line on previous indentation level
set expandtab           " Use spaces instead of tabs
set sw=4 sts=4

"" File specific tab sizes
autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2
autocmd FileType python set sw=4 sts=4

"" Random
set showcmd             " Show typed commands on the last line

""" Keybindings
"" Leader key Escape key
let mapleader="\<Space>"
imap hj <Esc>           

"" Background switcher
map <Leader>b :let &background = ( &background == "dark"? "light" : "dark" )<CR>
""

""" Plugin configuration
"" Neomake
autocmd! BufWritePost * Neomake

