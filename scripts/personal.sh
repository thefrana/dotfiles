config_folder=$HOME/.dotfiles/config

rm -rf $HOME/.gitconfig $HOME/.ssh/


### GIT
ln -sf $config_folder/.gitconfig $HOME/.gitconfig


### SSH
mkdir $HOME/.ssh/
sudo chmod 700 $HOME/.ssh/

touch $HOME/.ssh/id_rsa.pub
touch $HOME/.ssh/id_rsa

echo "id_rsa:"
cat > $HOME/.ssh/id_rsa
echo "" >> $HOME/.ssh/id_rsa

echo "\nid_rsa.pub:"
cat > $HOME/.ssh/id_rsa.pub
echo "" >> $HOME/.ssh/id_rsa

sudo chmod 600 $HOME/.ssh/id_rsa
sudo chmod 644 $HOME/.ssh/id_rsa.pub
