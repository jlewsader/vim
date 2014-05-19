set nocompatible "This fixes the problem where arrow keys do not function properly on some systems.
syntax on  "Enables syntax highlighting for programming languages
set mouse=a "Allows you to click around the text editor with your mouse to move the cursor
filetype plugin on "plugins!
filetype indent on
set omnifunc=syntaxcomplete#Complete
let g:snips_author =' Justin Lewsader'
execute pathogen#infect()
set showmatch "Highlights matching brackets in programming languages
set autoindent "If you're indented, new lines will also be indented
set smartindent "Automatically indents lines after opening a bracket in programming languages
set backspace=2 "This makes the backspace key function like it does in other programs.
set tabstop=4 "How much space Vim gives to a tab
set number "Line numbering 
set smarttab "Improves tabbing
set shiftwidth=4 "Assists code formatting
colorscheme apprentice "Changes the color scheme. Change this to your liking. Lookin /usr/share/vim/vim61/colors/ for options.
"setlocal spell  "Enables spell checking (CURRENTLY DISABLED because it's kinda annoying). Make sure to uncomment the next line if you use this.
"set spellfile=~/.vimwords.add  "The location of the spellcheck dictionary. Uncomment this line if you uncomment the previous line.
set foldmethod=manual "Lets you hide sections of code
"--- The following commands make the navigation keys work like standard editors
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk
"--- Ends navigation commands
"--- Startify Plugin
let g:startify_custom_header = [
	\'                              ',
	\'   HELLO JUSTIN!              ',
	\' Press "i" for new file       ',
	\'                              ',
	\]
let g:startify_bookmarks = [ '~/.vimrc','~/.bashrc' ]
let g:startify_session_dir = '~/.vim/session'
let g:startify_list_order = [
	\[' Bookmarks '],
	\'bookmarks',
    \['Recent files from the current directory'],
    \'dir',
	\['Recent Global Files'],
	\'files',
	\['Saved Sessions'],
	\'sessions',
	\]
let g:startify_session_detection = 1
let g:startify_session_autoload = 1
let g:startify_change_to_dir = 1
let g:startify_relative_path = 1
"--- End Startify Plugin
"Map a leader key <,>
let mapleader = ","
let g:mapleader = ","
"quick save
nmap <leader>w :w!<cr>
set ruler
set cmdheight=2
" Configure backspace
set backspace=eol,start,indent
" Ignore case for search and be smart
set ignorecase
set smartcase
set hlsearch "highlight search results
set showmatch "matching brackets
set foldcolumn=1
"Tabs, text, ect.
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai
set si
set wrap
"Visual Mode - * or # search current selection
vnoremap <silent> * :call VisualSelection('f','')<CR>
vnoremap <silent> # :call VisualSelection('b','')<CR>
"Windows--
map j gj
map k gk
"Spacebar search
map <space> / 
map <c-space> ?
"move windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>bd :Bclose<cr>
map <leader>ba :1,1000 bd!<cr>
"Tab managing
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext
" Open new tab in current dir
map <leader>te :tabedit <c-r>=expand("%:p:h")<c-r>/
" Switch CWD to current dir
map <leader>cd :cd %:p:h<cr>:pwd>cr>
"Last edit position
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ exe "normal! g'\"" |
	\ endif
"Quick scribble buffers
map <leader>q :e ~/buffer<cr>
map <leader>x :e ~/buffer.md<cr>
set laststatus=2 "status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %1
"map <leader>pp :setlocal paste!<cr>
"set clipboard=unnamedplus
"set pastetoggle=<F10>
"inoremap <C-v> <F10><C-r>+<F10>
"vnoremap <C-c> "+y
