start_path=$(pwd)

mkdir -p ~/.vim/plugins
mkdir -p ~/.vim/colors

# move all dot files to home directory
mv .vimrc ~

# vim settings
mv .vim/.mappings ~/.vim
mv .vim/.projectmappings  ~/.vim
mv .vim/.plugins ~/.vim
mv .vim/.settings ~/.vim
mv .vim/.ycm_extra_conf.py ~/.vim

mv .vim/colors/ir_black.vim ~/.vim/colors
mv .vim/plugins/cscope_maps.vim ~/.vim/plugins

# install vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

# cleanup
cd $start_path
cd ..
rm -r dotfiles