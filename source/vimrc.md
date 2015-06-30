---
title: Atlas Vim Docs - Vimrc Docs

language_tabs:
  - vim

toc_footers:
  - <a href='./index.html'>Index</a>
  - <a href='./plugins.html'>Plugins</a>
  - <a href='./vimrc.html'>Vimrc</a>
  - <a href='http://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - sitemap

search: true
---

# atlas-vim

[![Join the chat at https://gitter.im/juliosueiras/atlas-vim](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/juliosueiras/atlas-vim?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Vim with Setup for Atlas Server of Sheridan College(this is only for sheridan college student)
Make of backup of .vim folder and .vimrc(if you have one in your home folder)

# Vimrc Docs
" NEVER change this! Use Vim mode, not vi mode.
" Enable automatic settings based on file type
" Enable colour syntax highlighting
" auto format comment blocks
" To disable the stripping of whitespace, add the following to your
" .vimrc.before.local file:
" let g:spf13_keep_trailing_whitespace = 1
" preceding line best in a plugin but here for now.

## Start

```vim
set nocompatible               
filetype plugin indent on      
syntax on                      

so ~/.vimrc.addons
set comments=sl:/*,mb:*,elx:*/ " Remove trailing whitespaces and ^M chars

autocmd FileType haskell,puppet,ruby,yml setlocal expandtab shiftwidth=2 softtabstop=2

autocmd BufNewFile,BufRead *.coffee set filetype=coffee

autocmd FileType haskell setlocal commentstring=--\ %s

autocmd FileType haskell,rust setlocal nospell
```

## Second


```vim
let g:dbext_default_profile_test = 'type=ORA:user=$ORACLE_USER:passwd=$ORACLE_PASSWORD:filetype=sql'
set relativenumber
nnoremap <F10> :b <C-Z>

set hidden                     
set confirm                    

set viminfo='1000,f1,<500,:100,/100,h


set hlsearch                   
set ignorecase                 
set smartcase                  
set incsearch                  


set backspace=indent,eol,start 
set autoindent                 
set nostartofline              
set nopaste                    
set pastetoggle=<f11>          


set wildmenu                   
set wildmode=longest:full,full 
set showcmd                    
set laststatus=2               
set cmdheight=2                
set statusline=%f%m%r%h%w\ [%n:%{&ff}/%Y]%=[0x\%04.4B][%03v][%p%%\ line\ %l\ of\ %L]

set number                     
set visualbell                 
set t_vb=                      
set mouse=a                    

set notimeout ttimeout ttimeoutlen=200


set tabstop=8                  

set shiftwidth=2               
set softtabstop=2              

nnoremap Q gqip


nnoremap <Up> gk
nnoremap <Down> gj

map Y y$

nnoremap <C-L> :nohl<CR><C-L>

nnoremap <C-Bslash>       :set hls!<bar>:set hls?<CR>
inoremap <C-Bslash>       <Esc>:set hls!<bar>:set hls?<CR>a

if has("autocmd")
    augroup filetype
        " Remove ALL autocommands for the current group.
        autocmd!

        autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
    augroup END
endif

set t_Co=256
let g:molokai_original = 1
let g:rehash256 = 1
color molokai
let mapleader=','
inoremap jj <ESC>

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"x":""}',
      \ 'syntastic': '%#warningmsg#%{SyntasticStatuslineFlag()}%*',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

set noshowmode

let g:svnj_allow_leader_mappings=1
let g:svnj_browse_cache_all = 1
let g:signify_vcs_list = [ 'svn' ]


nnoremap Y y$"

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <F9> :NERDTreeToggle<CR>

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

set cursorline
set cursorcolumn
vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars
set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>
set wildignore=*.o,*.obj,*~                                                     "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*logs*
set wildignore+=*node_modules/**
set wildignore+=*DS_Store*
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>m :CtrlPMRU<CR>"
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qa qa
cnoreabbrev Bd bd
cnoreabbrev bD bd
cnoreabbrev wrap set wrap
cnoreabbrev nowrap set nowrap
cnoreabbrev bda BufOnly
cnoreabbrev t tabe
cnoreabbrev T tabe


nnoremap Y y$"
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <F10> :b <C-Z>
let g:BASH_Executable = '/bin/bash'
autocmd FileType sql,plsql let g:sql_type_default = 'plsql'

let g:sneak#streak = 1
if has('persistent_undo')
    set undofile
    set undolevels=1000
    set undoreload=10000
endif
set ts=2 sw=2 et
let g:indent_guides_start_level = 2
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set mousemodel=popup

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1

let g:viewdoc_open="below new"
```
