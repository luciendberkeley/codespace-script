Devcontainer and dockerfile to make an arch linux codespace

# Steps:
1. Startup codespace with this devcontainer
2. `sh .devcontainer/Arch/startup-i3.sh`
3. Open up the link in new guest tab
4. Run the following in the root terminal in i3:
```
pacman -S --noconfirm sudo
su - arch
sh .devcontainer/Arch/setup.sh

gh auth
# FOLLOW THE AUTH PROCESS
gh auth setup-git
```
5. You should be good but tbd
