sudo apt install firefox
sudo apt-get install zsh
sudo apt-get install git
sudo apt-get remove vim
sudo apt-get install vim-gnome
# --------------------Config vim--------------------------
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget -O ~/.vimrc https://raw.githubusercontent.com/kZime/my_config/master/.vimrc_mini
# -------------------Install Oh-my-zsh--------------------
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget -O ~/.zshrc https://raw.githubusercontent.com/kZime/my_config/master/.zshrc
echo exec zsh >> .bashrc
# -------------------Git Config---------------------------
git config --global user.email "liuyimu2015@hotmail.com"
git config --global user.name "kZime"
