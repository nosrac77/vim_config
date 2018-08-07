syntax enable "This enables syntax highlighting
set history=50 "This sets the number of times that the undo operation can be performed to 50 instead of the default 8
set number "This enables line numbering
set showcmd "Shows partial command in status line
set autowrite "Auto save before commands like :next and :make
set wrap "Automatically wrap text that scrolls beyond screen length

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'alfredodeza/pytest.vim'

call plug#end()
