#!/bin/bash - 
#===============================================================================
#
#          FILE: oneline_installer.sh
# 
#         USAGE: ./oneline_installer.sh 
# 
#   DESCRIPTION: A Installer script that only need oneline
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Dr. Fritz Mehner (fgm), mehner.fritz@fh-swf.de
#  ORGANIZATION: FH Südwestfalen, Iserlohn, Germany
#       CREATED: 07/24/2015 22:50
#      REVISION:  ---
#===============================================================================


wget https://github.com/juliosueiras/atlas-vim/archive/master.zip

unzip master.zip && mv atlas-vim-master atlas-vim

rm master.zip && cd atlas-vim && ./install.sh

cd .. && rm -rf atlas-vim
