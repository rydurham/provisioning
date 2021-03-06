" Plugins
so ~/.vim/plugins.vim

" Enable termguicolors if available
if (has("termguicolors"))
 set termguicolors
endif

" Enable syntax highlighting
syntax enable

" Theme					
colorscheme night-owl

" Show line numbers
set number			

" Break lines at word (requires Wrap Lines)
set linebreak			

" Wrap-broken line prefix
set showbreak=+++ 		

" Set a guideline indicator at column 80
call matchadd('ColorColumn', '\%80v', 100)

" Highlight matching brace
set showmatch			

" Enable spell-checking
" set spell			

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

" Allow "auto" writing
set autowrite

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

" Laravel Blade Filetype detection
autocmd BufRead,BufNewFile *.blade.php set softtabstop=2 
autocmd BufRead,BufNewFile *.blade.php set shiftwidth=2 

" Nerd Tree
nmap <C-e> :NERDTreeToggle<CR>

" Lightline configuration
set laststatus=2
set noshowmode

" Ctrl-P
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=100
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" vim-go
let g:go_fmt_command = "goimports"
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" markdown
au BufRead,BufNewFile *.md setlocal textwidth=80

" Hard mode!
"noremap <Down> <Nop>
"inoremap <Down> <Nop>
"inoremap <Up> <Nop>
"noremap <Up> <Nop>
"inoremap <Left> <Nop>
"noremap <Left> <Nop>
"inoremap <Right> <Nop>
"noremap <Right> <Nop>
