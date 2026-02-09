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

# Open up firefox and login to github.com
gh auth
# Follow the auth process (usually with browser)
gh auth setup-git
```
5. Install vimium extension
6. Import vimium config from `vimium-config.json`
7. Run: `rm vimium-config.json`
8. Should be setup
