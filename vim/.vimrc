set nocompatible

set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

set incsearch                 " incrimental search
set hlsearch                  " highlighting when searching

filetype indent plugin on
set autoindent

set backspace=2

set nolist                    " show/hide tabs and EOL chars
set nonumber                  " show/hide line numbers (nu/nonu)
set scrolloff=5               " scroll offsett, min lines above/below cursor
set scrolljump=5              " jump 5 lines when running out of the screen
set sidescroll=10             " minumum columns to scroll horizontally
set showcmd                   " show command status
set showmatch                 " flashes matching paren when one is typed
set showmode                  " show editing mode in status (-- INSERT --)
set ruler                     " show cursor position

set nofen
set foldmethod=indent         " indent based folding

set noerrorbells              " no bells in terminal
set undolevels=1000           " number of undos stored

:syntax on
:set number
:colorscheme obsidian
