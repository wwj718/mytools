cd ~
sudo apt-get install htop fish wget
wget https://raw.githubusercontent.com/wwj718/mytools/master/.vimrc_for_server -O ~/.vimrc
git clone https://github.com/sjl/z-fish.git "~/z-fish"
echo . ~/z-fish/z.fish > ~/.config/fish/config.fish
chsh -s /usr/bin/fish
#clone myNgrok
git clone https://git.oschina.net/wuwenjie/myNgrok.git "~/ngrok"
