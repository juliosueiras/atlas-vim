#!/bin/bash -
#===============================================================================
#
#          FILE: install.sh
#
#         USAGE: ./install.sh
#
#   DESCRIPTION: install script for atlas-vim
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Julio Tain Sueiras
#  ORGANIZATION:
#       CREATED: 15-06-24 20:37
#      REVISION:  ---
#===============================================================================


read -p "This will overwrtie existings .vim .vimrc and .vimrc.addons in your folder , do you want to procced(y/N)" usr_answer

if [[ $usr_answer == "y" ]]; then
    rm -rf ~/.vim ~/.vimrc ~/.vimrc.addons
    mv vim ~/.vim
    mv vimrc ~/.vimrc
    mv vimrc.addons ~/.vimrc.addons
    mv theme/tmux.conf ~/.tmux.conf
    mv theme/theme.tmuxline ~/.theme.tmuxline
    echo 'export PATH=$PATH:~/.vim/bin' >> ~/.login
    echo 'export PATH=$PATH:~/.vim/bin' >> ~/.bashrc
    exit 0;
else
    exit 1;
fi
