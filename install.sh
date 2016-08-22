#!/bin/bash
echo "This will replace existing .vimrc, .bash_profile, .bashrc and .git."
echo "This will also **ERASE** any pre-existing NVIM configuration / plugins"
read -p "Are you sure? " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd`
popd > /dev/null

echo "Replacing dot files ...."

ln -sf $SCRIPTPATH/.bashrc ~/.bashrc
ln -sf $SCRIPTPATH/.bashrc ~/.bash_profile # To cater for Mac..
ln -sf $SCRIPTPATH/.vimrc ~/.vimrc
ln -sf $SCIPTPATH/.git ~/.git

echo "Setting up vim-plug.."

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing Vim plugins"

vim +PlugInstall +qall

echo "Downloading powerline fonts"

git clone https://github.com/powerline/fonts.git
./fonts/install.sh

echo "Setting up NVIM symlinks"
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
rm -rf $XDG_CONFIG_HOME/nvim $XDG_CONFIG_HOME/nvim/init.vim
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim


echo
echo
echo "OK, we're done!"
echo "Suggested next steps: Install Ag (The Silver Searcher) and NVIM."
echo "Also set your terminal font to one of the powerline fonts installed with this script"
