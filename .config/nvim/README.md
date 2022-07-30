# Stable IDE config for Neovim 0.7

## Neovim 0.7
```
./neovim_install.sh
```

Run `nvim` and wait for the plugins to be installed 

A bunch of parsers the next time you open Neovim 

## Get healthy
Open `nvim` and enter the following:

```
:checkhealth
```

- Clipboard support
```sh
sudo apt install xsel # for X11
sudo apt install wl-clipboard # for wayland
pip install pynvim
```

- Neovim python support
```sh
pip install pynvim
```

- Neovim node support (optional)
```sh
npm i -g neovim
```

- Ripgrep for live_grep
```sh
sudo apt install ripgrep
```
---

## Fonts

[getnf](https://github.com/ronniedroid/getnf)

## LSP

To add a new LSP

First Enter:

```
:LspInstallInfo
```

and press `i` on the Language Server you wish to install

## Formatters and linters

Make sure the formatter or linter is installed and add it to this setup function: [null-ls](https://github.com/LunarVim/nvim-basic-ide/blob/8b9ec3bffe8c8577042baf07c75408532a733fea/lua/user/lsp/null-ls.lua#L13)

Some are already setup as examples

---

> The computing scientist's main challenge is not to get confused by the complexities of his own making. 

\- Edsger W. Dijkstra
