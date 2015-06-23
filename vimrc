" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:"
"
set nocompatible               " NEVER change this! Use Vim mode, not vi mode.
filetype plugin indent on      " Enable automatic settings based on file type
syntax on                      " Enable colour syntax highlighting

so ~/.vimrc.addons

""""""""""
" Options
""""""""""
" Use :help 'option (including the ' character) to learn more about each one.
"
" Buffer (File) Options:
set hidden                     " Edit multiple unsaved files at the same time
set confirm                    " Prompt to save unsaved changes when exiting
" Keep various histories between edits
set viminfo='1000,f1,<500,:100,/100,h

" Search Options:
set hlsearch                   " Highlight searches. See below for more.
set ignorecase                 " Do case insensitive matching...
set smartcase                  " ...except when using capital letters
set incsearch                  " Incremental search

" Insert (Edit) Options:
set backspace=indent,eol,start " Better handling of backspace key
set autoindent                 " Sane indenting when filetype not recognised
set nostartofline              " Emulate typical editor navigation behaviour
set nopaste                    " Start in normal (non-paste) mode
set pastetoggle=<f11>          " Use <F11> to toggle paste modes

" Status / Command Line Options:
set wildmenu                   " Better commandline completion
set wildmode=longest:full,full " Expand match on first Tab complete
set showcmd                    " Show (partial) command in status line.
set laststatus=2               " Always show a status line
set cmdheight=2                " Prevent "Press Enter" messages
" Show detailed information in status line
set statusline=%f%m%r%h%w\ [%n:%{&ff}/%Y]%=[0x\%04.4B][%03v][%p%%\ line\ %l\ of\ %L]

" Interface Options:
set number                     " Display line numbers at left of screen
set visualbell                 " Flash the screen instead of beeping on errors
set t_vb=                      " And then disable even the flashing
set mouse=a                    " Enable mouse usage (all modes) in terminals
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Indentation Options:
set tabstop=8                  " NEVER change this!
" Change the '2' value below to your preferred indentation level
set shiftwidth=2               " Number of spaces for
set softtabstop=2              " ...each indent level

"""""""
" Maps
"""""""
"
" F1 to be a context sensitive keyword-under-cursor lookup
nnoremap <F1> :help <C-R><C-W><CR>

" Reformat current paragraph
nnoremap Q gqip

" Move cursor between visual lines on screen
nnoremap <Up> gk
nnoremap <Down> gj

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Toggle search highlighting
nnoremap <C-Bslash>       :set hls!<bar>:set hls?<CR>
inoremap <C-Bslash>       <Esc>:set hls!<bar>:set hls?<CR>a

""""""""""""""""
" Auto commands
""""""""""""""""
"
if has("autocmd")
    augroup filetype
        " Remove ALL autocommands for the current group.
        autocmd!

        " Jump to last-known-position when editing files
        " Note: The | character is used in Vim as a command separator (like ; in C)
        autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
    augroup END
endif
set t_Co=256
let g:molokai_original = 1
let g:rehash256 = 1
color molokai
let mapleader=','
inoremap jj <ESC>
set noshowmode

nnoremap Y y$"
" Move selected lines up and down Yank to the end of the line
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

