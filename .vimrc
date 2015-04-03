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

"" installed plugins
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tmhedberg/matchit'
Plugin 'scrooloose/nerdcommenter'
Plugin 'groenewege/vim-less'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/TaskList.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'rking/ag.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/vim-easy-align'
Plugin 'valloric/MatchTagAlways'
Plugin 'vim-scripts/closetag.vim'
Plugin 'tpope/vim-unimpaired'

filetype plugin indent on " required 
syntax on
filetype plugin on
let mapleader = ","

" Settings of syntastic
let g:syntastic_cpp_compiler_options = '-std=c++11'
let g:syntastic_always_populate_loc_list = 1

" settings nerdtree(tabs): always open en focus on files if opening
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeShowHidden=1
map <silent> <Leader>e :NERDTreeToggle<CR>

" airline settings 
set laststatus=2
let g:airline#extensions#tabline#enabled=1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " show just name

" settings for complete in commandline: first longest then list
set wildmenu
set wildmode=longest,list:longest

" latexbox settings: necessary for auto viewing and highlighting properly
let g:LatexBox_latexmk_options = "-pdfps"
let g:LatexBox_latexmk_preview_continuously=1

" delimitMate settings
let delimitMate_expand_cr=1

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Tagbar settings
nnoremap <silent> <Leader>T :TagbarToggle<CR>

" general settings 
set t_Co=256
set background=light
colorscheme lucius " solarized lucias (dark) buttercream (light) molokai (dark) jellybean (dark) ir_black (dark) iceberg

" regular core vim settings
set showmatch
set cursorline

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
set shiftwidth=4
set tabstop=4

set list
set listchars=tab:>.

set ffs=unix,dos,mac
set backspace=indent,eol,start 

" mappings: for long lines over multiple rows, do proper navigation
map j gj
map k gk

" Easier navigations through windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" buffer movement
set hidden " hides abandoned buffers

" Move to the next buffer
nmap <leader>l :bnext<CR> 
" Move to the previous buffer
nmap <leader>h :bprevious<CR> 
" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>

" ycm settings
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1

" ignore white spaces in diff mode
if &diff
    set diffopt+=iwhite
endif

set diffopt+=vertical

" Tabs in make files
autocmd FileType make set noexpandtab 

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

" Regular files need spelling and no highlight end 
augroup noProg
    autocmd BufRead,BufNewFile *.txt setlocal spell spelllang=en_us 
    autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_us 
augroup END
