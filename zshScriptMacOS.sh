echo 'Moving to root folder'
cd ~
echo 'Installing Homebrew, you will need to enter sudo password here'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'Installing Github CLI'
brew install gh
echo 'Login to gh, follow onscreen instructions'
gh auth login
echo 'Install Oh My ZSH with curl'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'Download zshrc file, source it and cleanup folder'
gh repo clone benji2512/zshrcSetUp
cp ~/zshrcSetUp/.zshrcMacOS ~/.zshrc
source ~/.zshrc
rm -rf ~/zshrcSetUp
echo 'Install Fig for autocomplete'
brew install --cask fig
echo 'Installing Vim'
brew install vim
echo 'Now setting up Vim with config and then cleanup folder'
gh repo clone benji2512/vimrcScript
sh ~/vimrcScript/vimscript.sh
rm -rf ~/vimrcScript
echo 'Enjoy your new old workspace, Happy coding (:'
