syntax enable "This enables syntax highlighting
set history=50 "This sets the number of times that the undo operation can be performed to 50 instead of the default 8
set number "This enables line numbering
set showcmd "Shows partial command in status line
set autowrite "Auto save before commands like :next and :make
set wrap "Automatically wrap text that scrolls beyond screen length
set laststatus=2

" Setting termguicolors for OneDark Theme
if (empty($TMUX))
  if (has("termguicolors"))
    set termguicolors
  endif
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'alfredodeza/pytest.vim'
Plug 'scrooloose/syntastic'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
Plug 'JamshedVesuna/vim-markdown-preview'

call plug#end()

" Configuring OneDark Theme
syntax on
let g:airline_theme='onedark'
let g:onedark_terminal_italics=1
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

if (has("autocmd"))
  augroup colorset
    autocmd!
    let s:custom_bg_color = { "gui": "#121212", "cterm": "233", "cterm16" : "0" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "bg": s:custom_bg_color }) " Overrides reg bg color to make it darker
  augroup END
endif

colorscheme onedark

" Configuring vim-markdown-preview Plugin
let vim_markdown_preview_github=1 " Sets the markdown flavor to Github's
