#!/bin/bash
echo "This will replace existing .vimrc, .bash_profile, .bashrc, .tmux.conf and .git."
echo "If you have python installed, will also download powerline and replace the tmux powerline config"
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
ln -sf $SCRIPTPATH/.tmux.conf ~/.tmux.conf
ln -sf $SCIPTPATH/.git ~/.git

echo "Setting up Vundle.."

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing Vim plugins"

vim +PluginInstall +qall

echo "Downloading powerline fonts"

git clone https://github.com/powerline/fonts.git
./fonts/install.sh

command -v pip >/dev/null 2>&1
if [ $? -ne 0]; then
  echo "Could not find python package manager. Skipping powerline setup"
else
  echo "Python install found. Setting up powerline..."
  pip install --user powerline-status
  PYTHON_PACKAGES=$(python -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())")
  ln -sf $SCRIPTPATH/powerline/tmux/default.json $PYTHON_PACKAGES/powerline/config_files/themes/tmux/default.json
fi
