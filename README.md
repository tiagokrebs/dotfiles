# Dotfiles

## Kitty
```
git clone https://github.com/dracula/kitty.git ~/.config/kitty/themes/dracula
```

## zsh
```
sudo dnf install zsh
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

git clone https://github.com/dracula/zsh.git $ZSH_CUSTOM/themes/dracula
ln -s $ZSH_CUSTOM/themes/dracula/dracula.zsh-theme $ZSH_CUSTOM/themes/dracula.zsh-theme

git clone https://github.com/dracula/zsh-syntax-highlighting.git $ZSH_CUSTOM/highlight/dracula
```

## Lazygit
https://github.com/jesseduffield/lazygit#installation

If not in the instalation list
```sh
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit
rm -rf lazygit.tar.gz
lazygit --version
```
## Emacs
https://github.com/doomemacs/doomemacs#install

## Neovim
See .config/nvim

## Kitty
https://github.com/kovidgoyal/kitty

