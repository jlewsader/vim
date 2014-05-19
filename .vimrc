set nocompatible "This fixes the problem where arrow keys do not function properly on some systems.
syntax on  "Enables syntax highlighting for programming languages
set mouse=a "Allows you to click around the text editor with your mouse to move the cursor
:filetype plugin on "plugins!
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
	\'                              ',
	\]
let g:startify_bookmarks = [ '~/.vimrc' ]
let g:startify_session_dir = '~/.vim/session'
let g:startify_list_order = [
	\[' Bookmarks '],
	\'bookmarks',
	\['Recent Files'],
	\'files',
	\['Current Directory'],
	\'dir',
	\['Saved Sessions'],
	\'sessions',
	\]
let g:startify_session_detection = 1
let g:startify_session_autoload = 1
let g:startify_change_to_dir = 1
"--- End Startify Plugin
