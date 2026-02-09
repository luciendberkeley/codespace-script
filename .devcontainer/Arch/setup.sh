#!/bin/bash

set -eux
echo "---------- Running Setup ----------"

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm --needed vim tmux kitty firefox git jdk-openjdk base-devel github-cli fastfetch

curl -LJO https://raw.githubusercontent.com/luciendberkeley/codespace-script/refs/heads/main/.config/.vimrc
mv ./.vimrc ~/

curl -LJO https://raw.githubusercontent.com/luciendberkeley/codespace-script/refs/heads/main/.config/vimium-config.json
curl -LJO https://raw.githubusercontent.com/luciendberkeley/codespace-script/refs/heads/main/.config/i3-config
sudo cp ./i3-config /root/.config/i3/config
mv ./i3-config ~/.config/i3/config

curl -LJO https://raw.githubusercontent.com/luciendberkeley/codespace-script/refs/heads/main/.config/.bashrc-arch
curl -LJO https://raw.githubusercontent.com/luciendberkeley/codespace-script/refs/heads/main/.config/.bashrc
curl -LJO https://raw.githubusercontent.com/luciendberkeley/codespace-script/refs/heads/main/.config/.bash_profile
sudo mv ./.bashrc-arch /home/arch/.bashrc
sudo mv ./.bash_profile /home/arch/.bash_profile
sudo mv ./.bashrc /root/.bashrc

sudo i3-msg reload
sudo i3-msg restart

echo "Setup done"
