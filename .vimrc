set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
Bundle "sudar/vim-arduino-syntax"
Bundle "mhinz/vim-startify"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on  "Enables syntax highlighting for programming languages
"set mouse=a "Allows you to click around the text editor with your mouse to move the cursor
filetype plugin on "plugins!
filetype indent on
set omnifunc=syntaxcomplete#Complete
set showmatch "Highlights matching brackets in programming languages
set autoindent "If you're indented, new lines will also be indented
set smartindent "Automatically indents lines after opening a bracket in programming languages
set backspace=2 "This makes the backspace key function like it does in other programs.
set tabstop=4 "How much space Vim gives to a tab
set number "Line numbering 
set smarttab "Improves tabbing
set shiftwidth=4 "Assists code formatting
set foldmethod=manual "Lets you hide sections of code
"--- The following commands make the navigation keys work like standard editors
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk
"--- Ends navigation commands
"Map a leader key <,>
let mapleader = ","
let g:mapleader = ","
"quick save
nmap <leader>w :w!<cr>
"quick close
nmap <leader>q :q!<cr>
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
set cindent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai
set si
set wrap
"Spacebar search
map <space> / 
map <c-space> ?
"move windows
map <S-w> <C-w><C-w>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>bd :Bclose<cr>
map <leader>ba :1,1000 bd!<cr>
map <leader>bn :bnext<cr>
map <leader>bd :bd!<cr>
"Tab managing
map <leader>t :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>tn :tabnext<cr>
" Open new tab in current dir
map <leader>te :tabedit <c-r>=expand("%:p:h")<c-r>/
" Switch CWD to current dir
map <leader>cd :cd %:p:h<cr>:pwd<cr>
"Last edit position
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ exe "normal! g'\"" |
	\ endif
set laststatus=2 "status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %1
au BufLeave,FocusLost * silent! update "autosave 
"File Explorer Shortcut
map <leader>fe :Sex<cr>
"quick insert mode keys
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>o
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i
 "--- Startify Plugin
 let g:startify_bookmarks = ['~/.vimrc', '~/.bashrc' ]
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
 " :dj  "--- Jump to #define
 " :dla "--- List #define