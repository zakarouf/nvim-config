<div align="center">
  <h1> NeoVim Config </h1>
  <img src="scr1.png" />
  <b> My Personal Neovim Configuration. </b>
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

## LSP & Completion

This config supports 
1. nvim-coc and;
2. nvim-lsp

They can be choosen and toggled inside `init.lua` and `lua/user/plugins.lua` by editing the files.

## Speed & State

  This config is pretty mid-weight, while it does come with most of the stuff/plugins one would expect a neovim config to package with, this config however has not have all of them enabled and the enabled ones always have a convenient way for them to be replaced with another plugins if not outright disable them.

  Furthermore, as this is my personal config, it is geared to be used for developing C, C++, Lisp, Lua and Rust. However, they can be easily edited especially if you already know how to config your LSP.

## Editing

All config files lives under, `lua/user/` directory (except for `init.lua`). <br>
`init.lua` : Sources config for neovim and its plugins. Thats it. <br>
Here's a brief summary of what each config file is for :-
1. `basic.lua` : NeoVim basic config (tabspaces, mouse toggle etc.)
2. `keymap.lua` : Basic Keymaps and keybindings.
3. `plugins.lua` : Plugins To be installed, using `packer` as our package manager.
4. `makeup.lua` : Overall look of nvim, theme, buffers, bufferlines etc.
5. `lang.lua` : Config for nvim-lsp, `lsp` directory includes all the detailed config.
6. `coc.lua` : Config for Coc.nvim, alternative plugin if you dont want to use nvim-lsp as your language server.
7. `nvimtree.lua` : Config for nvimtree plugin.
8. `treesitter.lua` : Config for treesitter.
9. `discord.lua` : Config discord presence packages.

## Ending Note

I made the config as minimal as I can while also not sacrificing any 'ease of use'-ability. I would heavily recommend to use this config as basis for your own neovim config and not use it out of the box (unless there is nothing you want to change).


