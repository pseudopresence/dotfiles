"-- CORE ---------------------------------------------------------------------
" Start with Vim defaults rather than Vi defaults.
set nocompatible

" Use utf-8, not making this the default is a crime.
set encoding=utf-8

" Configure size of command line history.
set history=700

" Disable backup, writebackup, swapfile.
set nobackup
set nowritebackup
set noswapfile

"-- PLUGINS -------------------------------------------------------------------
" Install vim-plug if it isnt there - one of many plugin managers.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " TODO this threw an error - I think the idea is to run 'PlugInstall' and then
  " reload vimrc after the end of the init stuff on first install?
  autocmd VimEnter *   PlugInstall --sync | source $MYVIMRC
endif

" After editing or to update plugins, run ':PlugUpdate'
call plug#begin('~/.vim/plugged')
  " Install the kolor colourscheme
  Plug 'zeis/vim-kolor'
  " Install many colourschemes
  " Plug 'flazz/vim-colorschemes'
  " Install airline, one of several status line scripts
  Plug 'vim-airline/vim-airline'
  " Install the airline theme that matches our colourscheme
  Plug 'vim-airline/vim-airline-themes'
    let g:airline_powerline_fonts = 1
    let g:airline_theme='kolor'
  " Set the tmux statusline scheme from the vim one. Can also use this plugin to
  " generate lines for the tmux config file that set the appropriate statusline
  Plug 'edkolev/tmuxline.vim'
  " This plugin shows git status for each line in the gutter next to the line
  " numbers.
  Plug 'airblade/vim-gitgutter'
  " This plugin improves search highlighting and adds C-c as a shortcut to end
  " search.
  Plug 'timakro/vim-searchant'
call plug#end()

"-- TERMINAL -----------------------------------------------------------------
" Set the terminal title.
set title
" Set 256 colours.
set t_Co=256
" Fixes pasted newlines turning into ^M for some reason.
set t_BE=

"-- BEHAVIOUR ----------------------------------------------------------------
" Enable mouse for all modes.
set mouse=a
" Use xterm2 compatible mouse codes (allows dragging to trigger visual mode).
set ttymouse=xterm2

" Make the unnamed register the same as the system clipboard register.
" Yanking and pasting will interact directly with the system clipboard.
set clipboard=unnamed

" When splitting vertically/horizontally, put the new window below / right as
" opposed to above / left.
set splitbelow
set splitright

" Disable text wrapping.
set nowrap

" Backspace over everything in insert mode.
set backspace=indent,eol,start

" 80 char lines. Tab inserts 2 spaces. Convert all tabs to spaces. After end of
" line, try to figure out the corrent indentation for the next line.
set textwidth=80
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set fileformat=unix

" Python formatting: as above but 4 space indent.
autocmd BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |

" Enable syntax highlighting, indentation and plugins based on filetype.
syntax on
filetype on
filetype indent on
filetype plugin on

" Enable incremental search (search as you type).
set incsearch

" Enable search match highlight.
set hlsearch

" When editing a command line (Pressing ':'), enable tab-completion.
set wildmenu

" TODO pick a leader key and enable these.
" Yank text to the OS X clipboard
" noremap <leader>y "*y
" noremap <leader>yy "*Y
" Preserve indentation while pasting text from the OS X clipboard
" noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" Move among buffers with CTRL. The default bindings have autocomplete for C-n?
" and nothing for C-b.
map <C-n> :bnext<CR>
map <C-b> :bprev<CR>

"-- APPEARANCE ---------------------------------------------------------------

" Tell vim we're using a dark background, so pick foreground colours
" appropriately. See:
" https://vi.stackexchange.com/questions/12104/what-does-set-background-dark-do
set background=dark

" Set the colour scheme.
" TODO needs installing
" colorscheme gruvbox
" colorscheme hybrid
colorscheme kolor

" Show the current partial command in the status line.
set showcmd

" Show breaks if wrapping is enabled.
set showbreak=↪\ 

" Special characters to show whitespace etc. if "set list" is enabled.
set listchars=tab:»·,trail:·,eol:¶,nbsp:␣,trail:•,extends:⟩,precedes:⟨

" Show the cursor line and column number.
set ruler

" Show line numbers
set number

" Highlight column after 'textwidth'.
set colorcolumn=+1
" Set the colorcolumn colour.
" TODO update after changing colourscheme.
" highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
" TODO look up and configure
" highlight BadWhitespace ctermbg=blue guibg=blue

