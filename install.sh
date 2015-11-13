## install dotfiles, assumes vim exists

# install necessary applications
apt-get install tmux 
apt-get install silversearcher-ag
apt-get install git

mkdir -p ~/.vim
mkdir -p ~/.vim/plugins
mkdir -p ~/.vim/colors

# move all dot files to home directory
mv .tmux.conf ~
mv .bashrc ~
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
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
vim +PluginInstall +qall

# cleanup
cd ..
rm -r dotfiles
