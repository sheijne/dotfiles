## install dotfiles, assumes vim exists

# install necessary applications
#apt-get install tmux 
#apt-get install silversearcher-ag
#apt-get install git

mkdir -p ~/.vim
mkdir -p ~/.vim/plugins
mkdir -p ~/.vim/colors

# move all dot files to home directory
#mv .tmux.conf ~
#mv .bashrc ~
mv .vimrc ~

# vim settings
mv .vim/.mappings ~/.vim
mv .vim/.projectmappings  ~/.vim
mv .vim/.plugins ~/.vim
mv .vim/.settings ~/.vim
mv .vim/.ycm_extra_conf.py ~/.vim

mv .vim/colors/ir_black.vim ~/.vim/colors
mv .vim/plugins/cscope_maps.vim ~/.vim/plugins

# nvim symlinks
mv .config/nvim ~.config/nvim

# install stuff

# dependencies
apt-get install build-essential cmake
apt-get install python-dev
pip2 install neovim
pip3 install neovim

# install vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

# cleanup
cd ../..
rm -r dotfiles
