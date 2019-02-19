#Only works on Ubuntu,Debian and derivitives. Also requires root priviliages
cd ~
sudo apt install zsh
chsh -s /bin/zsh
echo $SHELL
apt install wget git
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
git clone https://github.com/benji2512/zshrcSetUp
cp ~/zshrcSetUp/.zshrc ~/.zshrc
source ~/.zshrc
