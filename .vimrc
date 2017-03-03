" -*- mode: vimrc -*-
"vim: ft=vim

" dotspacevim/auto-install {{{
" Automatic installation of spacevim.

if empty(glob('~/.vim/autoload/spacevim.vim'))
    silent !curl -sSfLo ~/.vim/autoload/spacevim.vim --create-dirs
          \ https://raw.githubusercontent.com/ctjhoa/spacevim/master/autoload/spacevim.vim
endif

" }}}

" dotspacevim/init {{{
" This code is called at the very startup of Spacevim initialization
" before layers configuration.
" You should not put any user code in there besides modifying the variable
" values."
" IMPORTANT: For the moment, any changes in plugins or layers needs
" a vim restart and :PlugInstall

  let g:dotspacevim_distribution_mode = 1

  let g:dotspacevim_configuration_layers = [
  \  'core/.*',
  \  'git',
  \  'syntax-checking'
  \]

  let g:dotspacevim_additional_plugins = ['morhetz/gruvbox', 'saltstack/salt-vim']

  let g:dotspacevim_excluded_plugins = []

  " let g:dotspacevim_escape_key_sequence = 'fd'

" }}}

" dotspacevim/user-init {{{
" Initialization for user code.
" It is compute immediately after `dotspacemacs/init', before layer
" configuration executes.
" This function is mostly useful for variables that need to be set
" before plugins are loaded. If you are unsure, you should try in setting
" them in `dotspacevim/user-config' first."

  let mapleader = ' '
  let g:leaderGuide_vertical = 1

" }}}

call spacevim#bootstrap()

" dotspacevim/user-config {{{
" Configuration for user code.
" This is computed at the very end of Spacevim initialization after
" layers configuration.
" This is the place where most of your configurations should be done.
" Unless it is explicitly specified that
" a variable should be set before a plugin is loaded,
" you should place your code here."

  set background=dark
  colorscheme gruvbox

  set showcmd
  set nowrap
  set backspace=indent,eol,start " backspace over everything in insert mode
  set listchars=tab:»·,trail:·,eol:¶
  
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab
  set smartindent

  syntax on
  filetype on
  filetype indent on
  filetype plugin on

  set ruler
  set incsearch
  set hlsearch

  set wildmenu

  set history=700

  set nobackup
  set nowb
  set noswapfile

  set t_Co=256    " set 256 colours
  set title       " set the terminal title

  " TODO these conflict with some existing spacevim shortcuts...
  " Yank text to the OS X clipboard
  " noremap <leader>y "*y
  " noremap <leader>yy "*Y
  " Preserve indentation while pasting text from the OS X clipboard
  " noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" }}}
