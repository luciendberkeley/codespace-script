# Use the latest Arch Linux base image
FROM archlinux:latest

# Update system and install base-devel group
RUN pacman -Syu --noconfirm base-devel

# Install other necessary packages
RUN pacman -S --noconfirm git vim python jdk-openjdk curl tmux fastfetch

WORKDIR /app
RUN curl -LJO https://raw.githubusercontent.com/luciendberkeley/arch-codespace-template/refs/heads/main/setup.sh
RUN chmod +x ./setup.sh
RUN ./setup.sh
