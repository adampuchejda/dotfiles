" To ward off unexpected events 
set nocompatible

" Enable syntax highlighting
if has('syntax')
   syntax enable
endif

" Autowrite buffers
set autowriteall

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches
set hlsearch!

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Keep the same indent as the line you are currently on
set autoindent

" Use visual bell instead of sound one
set visualbell

" Enable use of mouse for all modes
if has('mouse')
   set mouse=a
endif

" Display line numbers
set number

" Enable backspace key
set backspace=indent,eol,start

" Set tab to 4 spaces
set shiftwidth=2
set tabstop=2

" Set colorscheme
colorscheme happy_hacking

" Check if plugin manager is set up
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Plugins using vim-plug Vim plugin manager
call plug#begin('~/.vim/plugged')

" Nice status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tmux-line
Plug 'edkolev/tmuxline.vim'

"  NERDTree
Plug 'preservim/nerdtree'

" Wakatime - check your coding time
Plug 'wakatime/vim-wakatime'

" Python-mode
Plug 'python-mode/python-mode'

" Javascript
Plug 'pangloss/vim-javascript'

" C++ 
Plug 'octol/vim-cpp-enhanced-highlight'

" Rust
Plug 'rust-lang/rust.vim'

" Vim-polyglot
Plug 'sheerun/vim-polyglot'

" Ale - for linting (syntax checking and semantic errors)
Plug 'dense-analysis/ale'

call plug#end()

" New key-mappings associated with plugins
map <C-n> :NERDTreeToggle<CR>

" Changes to vim-airline 
let g:airline_powerline_fonts = 1
let g:airline_extensions = ["branch", "virtualenv", "wordcount"]
let g:airline_section_y = ""
let g:airline_section_z = airline#section#create(["%3p%% %3l/%L:%3v"])
let g:airline_theme = "cool"
