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
#       CREATED: 15-06-24 20:37
#      REVISION:  ---
#===============================================================================

install_atlas_vim(){
    # rm -rf ~/.vim ~/.vimrc ~/.vimrc.addons
    # mv vim ~/.vim
    # mv vimrc ~/.vimrc
    # mv vimrc.addons ~/.vimrc.addons
    # mv tmux/tmux.conf ~/.tmux.conf
    # mv tmux/theme.tmuxline ~/.theme.tmuxline
    # echo 'export PATH=$PATH:~/.vim/bin' >> ~/.login
    # echo 'export PATH=$PATH:~/.vim/bin' >> ~/.bashrc
    echo "hello"
    exit 0
  }

while [[ $# -ge 1 ]]
do
  key="$1"

  case $key in
    -y|--yes)
      install_atlas_vim; exit 0;;
    *)
      echo "Unkown Option/Arugment $1"; exit 1;;
  esac
  shift # past argument or value
done

read -p "This will overwrtie existings .vim .vimrc and .vimrc.addons in your folder , do you want to procced(y/N)" usr_answer


if [[ $usr_answer = "y" || $1 = "-y" ]]; then
  install_atlas_vim;
  exit 0;
else
  exit 1;
fi

