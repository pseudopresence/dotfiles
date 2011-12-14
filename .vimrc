" based on http://items.sjbach.com/319/configuring-vim-right and my fibnode vimrc

set nocompatible    " use vim defaults instead of vi ones
set showcmd
set encoding=utf-8

"" Whitespace
set nowrap
set tabstop=2       " number of spaces for tab character
set shiftwidth=2    " number of spaces to (auto)indent
set expandtab       " expand tabs to spaces
set smartindent     " turn on smart indent
set backspace=indent,eol,start " allow backspacing over everything
set listchars=tab:»·,trail:·,eol:¶

set backupdir=~/.vim/backup//   " store backups and temp files in a
set directory=~/.vim/temp//     " central place rather than in every dir

"" Searching
set ruler           " show % through file in status
set hlsearch        " highlight searches
set incsearch       " incremental searching
set ignorecase      " searches are case insensitive...
set smartcase       " ... unless they contain at least one capital letter

"" Syntax and Pathogen

" turn off syntax and filetype plugins before loading pathogen bundles
syntax off
filetype off
call pathogen#runtime_append_all_bundles()

" turn on syntax highlighting and plugins
syntax on
filetype on
filetype plugin on
filetype indent on

"" Terminal
set t_Co=256    " set 256 colours
set title           " set the terminal title

