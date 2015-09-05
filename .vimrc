" Required 
set nocompatible          
filetype off             

" vundle
" Linux: (just check path really)
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" windows:
" set rtp+=~/vimfiles/bundle/vundle/
" let path='~/vimfiles/bundle'
" call vundle#rc(path)

so .vim/.pluginsrc

" General settings
let mapleader = " "         " Spacebar map leader
filetype plugin indent on   " Identify language specific indent options
filetype plugin on
syntax on                   " use syntax..

set autoread                " auto reload files on change

" read file settings
set ffs=unix,dos,mac
set backspace=indent,eol,start 

" Visual settings
set t_Co=256
set background=dark
colorscheme jellybeans " lucius (dark) molokai (dark) jellybean (dark) ir_black (dark) iceberg molokai hemisu apprentice hybrid

" UI
set showcmd     " Show cmd below
set number      " Show line numbers
set showmatch   " Show matching (improved by matchit plugin)
set linebreak   "
set cursorline  " highlight current line

set scrolloff=5 " always show 5 lines above and below cursor
set hidden " hides abandoned buffers
set lazyredraw  " only redraw if necessary (improves macros performance)

" Draw tabs as >.
set list
set listchars=tab:>.

" search settings
set hlsearch
set incsearch
set smartcase
set ignorecase

" Tabs / spaces
set expandtab
set autoindent
set smartindent
set smarttab
autocmd FileType make set noexpandtab " Tabs in make files

set shiftwidth=4
set tabstop=4
set softtabstop=4 

" autocomplete cmdline
set wildmenu
set wildmode=longest,list:longest

" mappings: for long lines over multiple rows, do proper navigation
map j gj
map k gk

" Fugitive mappings
nmap <leader>gs :Gstatus<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gd :Gdiff<cr>

" Easier navigations through windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>

" Diff settings gitgutter
set diffopt+=iwhite " ignore white spaces in diff mode
set diffopt+=vertical

" ctrlp settings
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" airline settings 
set laststatus                            =2
let g:airline#extensions#tabline#enabled  = 1    " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " show just name

" Settings of syntastic
let g:syntastic_cpp_compiler_options     = '-std=c++11'
let g:syntastic_always_populate_loc_list = 1

" settings nerdtree(tabs): always open and focus on files if opening
let g:nerdtree_tabs_focus_on_files = 1
let g:NERDTreeShowHidden           = 1
map <silent> <Leader>e :NERDTreeToggle<CR>

" delimitMate settings
let delimitMate_expand_cr=1

" Easy align settings
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign) 
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Tagbar settings
nnoremap <silent> <Leader>T :TagbarToggle<CR>

" latexbox settings: necessary for auto viewing and highlighting properly
let g:LatexBox_latexmk_options = "-pdfps"
let g:LatexBox_latexmk_preview_continuously=1

" Regular files need spelling and no highlight end 
augroup noProg
    autocmd BufRead,BufNewFile *.txt setlocal spell spelllang=en_us 
    autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_us 
    autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us 
augroup END
