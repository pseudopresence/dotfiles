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

" Set spacebar as the leader key
" TODO this does really weird things, it needs to be leader ONLY in normal mode,
" not insert mode!
" let mapleader = " "

" Don't close buffers with unsaved changes when you open a new file, instead
" hide them?
set hidden

" Don't update the display while executing macros
set lazyredraw

" Show current mode? I think airline makes this unnecessary...
set showmode

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
    " If there's only one tab open, list all buffers instead
    let g:airline#extensions#tabline#enabled = 1
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

  " Vim has a built-in completion mode, see :help ins-completion. It's activated
  " with Ctrl-X and then a command, while in insert mode.
  " I think supertab just changes that to <Tab>?
  " YouCompleteMe docs suggest that it already obsoletes supertab and integrates
  " with UltiSnips so idk what this is doing in the example config I'm basing
  " myself on.
  " Plug 'ervandew/supertab'
    " make YCM compatible with UltiSnips (using supertab)
    " let g:SuperTabDefaultCompletionType = '<C-n>'
  " TODO look into UltiSnips, could use it to create templates for C++ headers.

  " Adds some : commands for perfoming Unix filesystem operations
  Plug 'tpope/vim-eunuch' 

  " Autocomplete plugin that integrates with many things
  "Plug 'Valloric/YouCompleteMe'
    " TODO look further into these config options
    " map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
    "let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
    "let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
    "let g:ycm_min_num_of_chars_for_completion = 1
    "let g:ycm_autoclose_preview_window_after_completion=1
    "let g:ycm_autoclose_preview_window_after_insertion=1
    "let g:ycm_python_binary_path='python'
    "let g:ycm_auto_trigger = 0
    "let g:ycm_min_num_of_chars_for_completion = 1
    "let g:ycm_autoclose_preview_window_after_completion=1
    "let g:ycm_semantic_triggers =  {
    "  \   'c' : ['->', '.'],
    "  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
    "  \             're!\[.*\]\s'],
    "  \   'ocaml' : ['.', '#'],
    "  \   'cpp,objcpp' : ['->', '.', '::'],
    "  \   'perl' : ['->'],
    "  \   'php' : ['->', '::'],
    "  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.','from ','import '],
    "  \   'ruby' : ['.', '::'],
    "  \   'lua' : ['.', ':'],
    "  \   'erlang' : [':'],
    "  \ }
    
  " Collection of syntax and indent plugins for many langs
  Plug 'sheerun/vim-polyglot'
  " Asynchronous Lint Engine - seems potentially a pain to configure for C++
  " projects?
  " Plug 'w0rp/ale'
  " Better python syntax highlight and indenting?
  " Plug 'vim-python/python-syntax'
  " Plug 'vim-scripts/indentpython.vim'
    
  " Automatically insert closing parens, quotes, etc
  Plug 'Raimondi/delimitMate'

  " NERDTree file browser
  Plug 'scrooloose/nerdtree'
     " If set to 1 then a double click on a node is required to open it.
     " If set to 2 then a single click will open directory nodes, while a
     " double click will still be required for file nodes.
     " If set to 3 then a single click will open any node.
    let g:NERDTreeMouseMode=2
    let NERDTreeShowHidden=1
    let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
    " Don't hightlight current line - helps with lag issues
    let g:NERDTreeHighlightCursorline = 0
    map <leader>\ :NERDTreeToggle<CR>
  " Show git status in nerdtree
  Plug 'Xuyuanp/nerdtree-git-plugin'
  " Git commands for vim
  Plug 'tpope/vim-fugitive'
  " Git branch/merge UI, invoke with :Merginal
  Plug 'idanarye/vim-merginal'
  " Snippets - TODO investigate
  " Plug 'SirVer/ultisnips'
  "  let g:UltiSnipsExpandTrigger = "<tab>"
  "  let g:UltiSnipsJumpForwardTrigger = "<tab>"
  "  let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
  " If you want :UltiSnipsEdit to split your window.
  "  let g:UltiSnipsEditSplit="vertical"
  " Plug 'honza/vim-snippets'
  " Add filetype glyphs/icons to NERDTree, airline, other plugins
  Plug 'ryanoasis/vim-devicons'
    let g:WebDevIconsUnicodeDecorateFolderNodes = 1
    let g:DevIconsEnableFoldersOpenClose = 1
  " Use syntax highlight to colour the icons 
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    " let g:NERDTreeSyntaxDisableDefaultExtensions = 1
    " let g:NERDTreeDisableExactMatchHighlight = 1
    " let g:NERDTreeDisablePatternMatchHighlight = 1
    " let g:NERDTreeSyntaxEnabledExtensions = ['c', 'h', 'c++', 'cc', 'js', 'css', 'py', 'cmake', 'txt', 'md', 'proto', 'gitignore', 'in', 'xml']
  " Fuzzy file finding
  Plug 'ctrlpvim/ctrlp.vim'
    " search up parent dirs for a .git dir and use that as root
    let g:ctrlp_working_path_mode = 'r'
  " Adds a command :A that switches between .h and .cpp... not sure how well
  " this will work
  Plug 'vim-scripts/a.vim'
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
" set mouse=a
" Use xterm2 compatible mouse codes (allows dragging to trigger visual mode).
" set ttymouse=xterm2

" Make the unnamed register the same as the system clipboard register.
" Yanking and pasting will interact directly with the system clipboard.
" set clipboard=unnamed

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
set textwidth=0
set wrapmargin=0
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
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"-- APPEARANCE ---------------------------------------------------------------

" Tell vim we're using a dark background, so pick foreground colours
" appropriately. See:
" https://vi.stackexchange.com/questions/12104/what-does-set-background-dark-do
set background=dark

" Set the colour scheme.
" NOPE this really messes up the colours on urxvt!
" Vim >=8.0 or Neovim >= 0.1.5
"if (has("termguicolors"))
""   set termguicolors
"endif
" Neovim 0.1.3 or 0.1.4
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1


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

