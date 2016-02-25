#!/bin/bash
echo "This will replace existing .vimrc, .bash_profile, .bashrc and .git."
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

echo "Setting up Vundle.."

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing Vim plugins"

vim +PluginInstall +qall

echo "Downloading powerline fonts"

git clone https://github.com/powerline/fonts.git
./fonts/install.sh
