cd ~
NAME=$(lsb_release -is)
if [ $NAME = 'Ubuntu' ]
then
   sudo apt install zsh
elif [ $NAME = 'openSUSE' ]
then
   sudo zypper install zsh;
fi
echo 'Next command is chsh and this needs your root password. Change the shell path to /usr/bin/zsh and continue.'
chsh
echo $SHELL
if [ $NAME = 'Ubuntu' ]
then
   sudo apt install wget git vim;
elif [ $NAME = 'openSUSE' ]
then
   sudo zypper install wget git vim;
fi
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
git clone https://github.com/benji2512/zshrcSetUp
cp ~/zshrcSetUp/.zshrcLinux ~/.zshrc
source ~/.zshrc
echo 'Please now run su - <USERNAME> to check that the install was completed successfully. Then restart system for changes to take.'
