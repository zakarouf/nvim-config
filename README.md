# NeoVim Config

<div align="center">
  <img src="scr1.png" />
  My Personal Neovim Config.
</div>

## Install

This neovim config uses [packer](https://github.com/wbthomason/packer.nvim) for managing packages. Install it first

Clone the Repo
```sh
git clone https://github.com/zakarouf/nvim-config
```

Move The Repository
```sh
mv ~/.config/nvim ~/.config/nvim-old # keep an backup of your old config
mv nvim-config ~/.config/nvim
```

## Completion

This config includes 
1. nvim-coc and;
2. nvim-lsp

They can be choosen and toggled inside `init.lua` and `lua/user/plugins.lua` by editing the files.

