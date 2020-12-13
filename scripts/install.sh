pkgs_folder=$HOME/.dotfiles/pkgs


### PACKAGES
if command -v pacman &> /dev/null
then
    sudo pacman -S --needed $(cat $pkgs_folder/pacman)
fi

if command -v apt &> /dev/null
then
    sudo apt install $(cat $pkgs_folder/apt)
fi


### NODE
sudo npm i -g @vue/cli


### DOCKER
sudo usermod -aG docker $USER
sudo systemctl enable --now docker


### SCRIPTS
# sh ./terminal.sh
# sh ./personal.sh
