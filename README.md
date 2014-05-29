#Welcome 
**INTRO**
This repo is a collection of my ~/.vim directory. I decided to publish my vim files to aid in any vim customization and to track my changes.

**INSTALLATION**
The following is the simplest method of installation. This method will overwrite any existing vim directory so it is best for a new install or if you are sure you only want my setup installed. (There may be other methods of installation, including a way to append my setup to an existing preconfigured vim directory, but I am not familiar with it as of this moment so I won't go there!)

Simply clone the repo into your '~/.vim' directory... 'git clone https://github.com/jlewsader/vim.git ~/.vim'
Then add '~/.vim/.vimrc' to your '$PATH'

To add new plugins, we use Pathogen. 'git clone "PLUGIN REPO URL" ~/.vim/bundle' And thats it!

**PLUGINS**
-[Fugitive](https://github.com/tpope/vim-fugitive)
-[SnipMate](https://github.com/msanders/snipmate.vim)
-[TaskList](https://github.com/vim-scripts/TaskList.vim)
-[YankRing](https://github.com/vim-scripts/YankRing.vim)
-[Emmet](https://github.com/mattn/emmet-vim)
-[Airline](https://github.com/bling/vim-airline)
-[Commentary](https://github.com/tpope/vim-commentary)
-[LESS](https://github.com/groenewege/vim-less)
-[Startify](https://github.com/mhinz/vim-startify)
-[Pathogen](https://github.com/tpope/vim-pathogen)

**SETTINGS**
When reading through the .vimrc file, most lines are commented to describe what they are doing. The first thing you want to be sure to include is 'filetype plugin on' and 'execute pathogen#infect()'. This will allow plugins to work and pathogen to help with the installation of plugins, respectfully.

Line 27 starts a section of Startify plugin setting. Startify is a great start screen for vim. It allows to save bookmarked files, show files in current directory, ect. Read more about it at the link above.

Line 51, I map a "leader" key for custom key combos... "," is the leader. With this I can type ",t" to open a new tab, for example.

Basically just read through all the comments and you will see what key maps have been set for what functions.
