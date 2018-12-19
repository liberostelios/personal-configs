set nocompatible					"Drop compatibility with original Vi (for bundle plugin)

so ~/.vim/plugins.vim

syntax enable

" Set 256 colors and the relative color scheme
set t_Co=256
colorscheme atom-dark-256

" Enable mouse scrolling through terminal
set mouse=a

" Make comma the leader and allow line numbering
let mapleader=","
set number

" Make search possible and allow for exiting
set hlsearch
set incsearch
nmap <Leader><space> :nohlsearch<cr>

" Make vimrc editing simpler
nmap <Leader>ev :e $MYVIMRC<cr>
nmap <Leader>sv :so $MYVIMRC<cr>

" Airline plugin settings
let g:airline#extensions#tabline#enabled=1

" Preferences
:set list						"This is to show whitechars (like tabs)
:set listchars=tab:\>\ 					"This is to define how to show a tab

" Mappings for cursor
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Adds FormatXML command to prettify XML docs
com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"

nnoremap = :FormatXML<Cr>
