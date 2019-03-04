#Only works on Ubuntu,Debian and derivitives. Also requires root priviliages
cd ~
osName = lsb_release -is
if [osName == "Ubuntu"]
then
   sudo apt install zsh
elif [osName == "openSUSE"]
then
   sudo zypper install zsh
chsh -s ~/bin/zsh root
echo $SHELL
if [osName == "Ubuntu"]
then
   apt install wget git
elif [osName == "openSUSE"]
then
   zypper install wget git
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
git clone https://github.com/benji2512/zshrcSetUp
cp ~/zshrcSetUp/.zshrc ~/.zshrc
source ~/.zshrc
