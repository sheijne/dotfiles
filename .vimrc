set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" Linux: (just check path really)
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" windows:
" set rtp+=~/vimfiles/bundle/vundle/
" let path='~/vimfiles/bundle'
" call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" installed plugins
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tmhedberg/matchit'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'groenewege/vim-less'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-fugitive'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'majutsushi/tagbar'

filetype plugin indent on " required

syntax on
filetype plugin on
let mapleader = ","

" Settings of syntastic
let g:syntastic_cpp_compiler_options = '-std=c++0x'

" settings nerdtreetabs: always open en focus on files if opening
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeShowHidden=1
map <silent> <Leader>e :NERDTreeToggle<CR>

" settings for complete in commandline: first longest then list
set wildmenu
set wildmode=longest,list:longest

" neocomplcache autocomplete
let g:neocomplcache_enable_at_startup=1  
let g:neocomplcache_enable_auto_select=1  
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_max_list=10  
inoremap <expr><C-l>     neocomplcache#complete_common_string() 

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" latexbox settings: necessary for auto viewing and highlighting properly
let g:LatexBox_latexmk_options = "-pv -pdf"

" delimitMate settings
let delimitMate_expand_cr=1

" Tagbar settings
nnoremap <silent> <Leader>t :TagbarToggle<CR>

" general settings 
set background=dark
colorscheme default

set scrolloff=3
set number
set linebreak

set hlsearch
set incsearch
set smartcase
set ignorecase

set expandtab
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set tabstop=2

set list
set listchars=tab:>.

set ffs=unix,dos,mac
set backspace=indent,eol,start

" mappings: for long lines over multiple rows, do proper navigation
map j gj
map k gk

" Drupal stuff
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif

" Latex spelling
autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_us

