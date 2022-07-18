# Dotfiles

## zsh
```
sudo dnf install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

## Lazygit
https://github.com/jesseduffield/lazygit#installation

## NeoVim
NeoVim (0.7) https://github.com/neovim/neovim/wiki/Installing-Neovim  
NerdFonts https://github.com/ronniedroid/getnf  
https://github.com/JohnnyMorganz/StyLua
  
```
sudo dnf install ripgrep python3-black

pip install flake8  

```  
Open nvim  
```
:PackerSync
```  
