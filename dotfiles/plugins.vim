" Plugins
so ~/.vim/plugins.vim

" Theme					
" https://github.com/haishanh/night-owl.vim
colorscheme night-owl

set termguicolors

" Enable syntax highlighting
syntax on

" Show line numbers
set number			

" Break lines at word (requires Wrap Lines)
set linebreak			

" Wrap-broken line prefix
set showbreak=+++ 		

" Line wrap (number of cols)
set textwidth=100		

" Highlight matching brace
set showmatch			

" Enable spell-checking
set spell			

" Use visual bell (no beeping)
set visualbell			 

" Highlight all search results
set hlsearch			

" Enable smart-case search
set smartcase			

" Always case-insensitive
set ignorecase			

" Search for strings incrementally
set incsearch			 

" Auto-indent new lines
set autoindent				

" Number of auto-indent spaces
set shiftwidth=4			

" Enable smart-indent
set smartindent				

" Enable smart-tabs
set smarttab				

" Number of spaces per Tab
set softtabstop=4			

" Show row and column ruler information
set ruler				

" Number of undo levels
set undolevels=1000			

" Backspace behaviour
set backspace=indent,eol,start		

" Load the file type detection plugin 
filetype plugin on			

" Enable indentation based on file type
filetype indent on

" Enable backups
set backup 

" store backup files in a separate, hidden location
set backupdir=/.vim/backups,/tmp,.		

" store swap files in a separate, hidden location
set directory=~/.vim/swap-files,~/tmp,.

" Bubble multiple lines
nmap <C-Up> ddkP
nmap <C-Down> ddp

" Bubble single lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]


