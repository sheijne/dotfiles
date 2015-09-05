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

so ~/.vim/.plugins
so ~/.vim/.settings
so ~/.vim/.mappings
so ~/.vim/.projectmappings
