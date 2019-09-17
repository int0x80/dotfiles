set nocompatible

set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

set errorformat+=%.%#PHP:\ %m\ \(in\ %f\ on\ line\ %l\)%.%#,
  \%E%[0-9]%#.%m:%f?rev=%.%##L%l\ %.%#,%C%.%#

autocmd BufNewFile,BufRead svn-commit.*tmp :0r $SVN_COMMIT_TEMPLATE


set nocompatible

set tags=tags;/

set incsearch                 " incrimental search
set hlsearch                  " highlighting when searching

filetype indent plugin off
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
set viminfo='50,"50           " '=marks for x files, "=registers for x files




:vmap gb :<C-U>!git blame % -L<C-R>=line("'<") <CR>,<C-R>=line("'>") <CR><CR>
:nmap gb :!git blame %<CR>


if &t_Co > 2 || has("gui_running")
 :syntax on
 " Change the highlight color for Comment and Special
 " to Cyan.  Blue is too dark for a black background.
 "
 :highlight Comment  term=bold ctermfg=cyan guifg=cyan
 :highlight Special  term=bold ctermfg=cyan guifg=cyan
 :highlight Constant term=bold ctermfg=red guifg=cyan
endif

:set number
