#Only works on Ubuntu,Debian and derivitives. Also requires root priviliages
cd ~
NAME=$(lsb_release -is)
if [ $NAME = 'Ubuntu' ]
then
   sudo apt install zsh
elif [ $NAME = 'openSUSE' ]
then
   sudo zypper install zsh;
fi
chsh -s ~/bin/zsh root
echo $SHELL
if [ $NAME = 'Ubuntu' ]
then
   apt install wget git;
elif [ $NAME = 'openSUSE' ]
then
   zypper install wget git;
fi
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
git clone https://github.com/benji2512/zshrcSetUp
cp ~/zshrcSetUp/.zshrc ~/.zshrc
source ~/.zshrc

