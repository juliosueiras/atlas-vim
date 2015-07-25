![logo](https://raw.githubusercontent.com/juliosueiras/atlas-vim/master/img/logo.png)


[![Join the chat at https://gitter.im/juliosueiras/atlas-vim](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/juliosueiras/atlas-vim?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Vim with Setup for Atlas Server of Sheridan College(this is only for sheridan college student)
Make of backup of .vim folder and .vimrc(if you have one in your home folder)

## Instruction
there is two method provided to install

### Method 1: Automatic Install
to install this way just run the following command in your shell/putty

~~~shell
curl https://github.com/juliosueiras/atlas-vim/blob/master/oneline_installer.sh | bash
~~~

### Method 2: Manual Install
>copy the download zip link in the right on github page(in this page)
then go to terminal/putty , login to your atlas and run

~~~shell
wget https://github.com/juliosueiras/atlas-vim/archive/master.zip
~~~

next execute

~~~shell
unzip master.zip && mv atlas-vim-master atlas-vim`
~~~

last go inside of the folder and execute **BEWARE** this will overwrite .vim and .vimrc in your home folder(if you have one) make sure to backup it first

~~~shell
./install.sh
~~~

## Plugins List Installed
For complete list of plugin installed go to [Plugins List](https://juliosueiras.github.io/atlas-vim/plugins.html)

## Plugin For Learning Vim
- [LearnVim](https://github.com/dahu/LearnVim) `:h learnvim`

## Site to learn vim
- [Interactive Online Vim Tutorial](www.openvim.com/tutorial.html)
- [VIM Adventures](http://vim-adventures.com/)

## Bug
create a issue github or send me a email if you ask me or there is issue
my email is juliosueiras@gmail.com


## License
MIT License
