sudo apt-get install g++
sudo apt-get install gdb
sudo apt-get install zsh
sudo apt-get install git
sudo apt-get remove vim
sudo apt-get install vim-gtk3
sudo apt-get install vim-gnome

# ------------Install Fonts 4 powerline-------------------
# clone

git clone https://github.com/powerline/fonts.git --depth=1

# install

cd fonts
./install.sh

# clean-up a bit

cd ..
rm -rf fonts

# --------------------Config vim--------------------------

wget -P ~ http://git.margatroid.xyz/Margatroid/vimrc/raw/master/.vimrc
git clone http://github.com/gmarik/vundle.git ~/.vim/vundle.git

# -------------------Install Oh-my-zsh--------------------

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

wget -P ~/.oh-my-zsh/themes/ https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme

# -----------------Install YouCompleteMe------------------

sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
~/.vim/bundle/YouCompleteMe/install.py --clang-completer
echo "You need to install plugin for vim & set the theme for zsh youself"
