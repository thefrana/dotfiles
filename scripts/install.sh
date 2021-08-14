pkgs_folder=$HOME/.config/dotfiles/pkgs

yay -S --needed $(cat $pkgs_folder/yay)

### PACKAGES
if command -v pacman &> /dev/null
then
    # curl -s 'https://download.opensuse.org/repositories/home:/ungoogled_chromium/Arch/x86_64/home_ungoogled_chromium_Arch.key' | sudo pacman-key -a -
    # echo '
    # [home_ungoogled_chromium_Arch]
    # SigLevel = Required TrustAll
    # Server = https://download.opensuse.org/repositories/home:/ungoogled_chromium/Arch/$arch' | sudo tee --append /etc/pacman.conf
    # sudo pacman -Sy

    sudo pacman -S --needed $(cat $pkgs_folder/pacman)
fi

if command -v yay &> /dev/null
then
    yay -S --needed $(cat $pkgs_folder/yay)
fi

if command -v apt &> /dev/null
then
    sudo apt install $(cat $pkgs_folder/apt)
fi


### NODE
# sudo npm i -g @vue/cli fastify-cli


### DOCKER
sudo usermod -aG docker $USER
sudo systemctl enable --now docker


### SCRIPTS
# sh ./terminal.sh
# sh ./personal.sh
