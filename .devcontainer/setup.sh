#!/bin/bash

set -eux
echo "---------- Running Setup"

sudo apt update
sudo apt install -y vim

curl -LJO https://raw.githubusercontent.com/luciendberkeley/arch-codespace-template/refs/heads/main/.config/.vimrc
mv ./.vimrc ~/

echo "Setup done"
