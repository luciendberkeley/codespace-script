#!/bin/bash

set -eux
echo "---------- Running Setup ----------"

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm --needed vim tmux kitty firefox git jdk-openjdk base-devel github-cli

curl -LJO https://raw.githubusercontent.com/luciendberkeley/codespace-script/refs/heads/main/.config/.vimrc
mv ./.vimrc ~/

curl -LJO https://raw.githubusercontent.com/luciendberkeley/codespace-script/refs/heads/main/.config/vimium-config.json
curl -LJO https://raw.githubusercontent.com/luciendberkeley/codespace-script/refs/heads/main/.config/i3-config
mv ./i3-config ~/.config/i3/config

curl -LJO https://raw.githubusercontent.com/luciendberkeley/codespace-script/refs/heads/main/.config/.bashrc-arch
curl -LJO https://raw.githubusercontent.com/luciendberkeley/codespace-script/refs/heads/main/.config/.bashrc
exit
mv ./.bashrc-arch /home/arch/.bashrc
mv ./.bashrc ~/.bashrc
su - arch

echo "Setup done"
