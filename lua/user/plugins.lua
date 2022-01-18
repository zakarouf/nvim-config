local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
      PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end


-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]


-- Use a protected call so we don't error out on first use
local packer = require("packer")

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- Basic Plugins
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
    use {"nvim-lua/plenary.nvim", module = "plenary" } -- Useful lua functions used ny lots of plugins

  -- Lazy loading:
    use {'lewis6991/impatient.nvim'}

  -- Dispatcher
    use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Better File Loading (should be faster)
    use {"nathom/filetype.nvim"}

  -- Snippet Collection
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- Autopairs => [], {}, (), "", '', <>
    use "windwp/nvim-autopairs"


  -- COC Lsp, Snippets, Completion (Use either Nvim Lsp Or COC)
    --use { 'neoclide/coc.nvim', branch = 'release' }

  -- LSP
    use "neovim/nvim-lspconfig"

  -- Snippet Engine
    use "L3MON4D3/LuaSnip"

  -- 'nvim-cmp' Completion
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- Snippet completions
    use "hrsh7th/cmp-nvim-lsp" --LSP Completion
    use "hrsh7th/cmp-nvim-lua" 

  -- Icons
    use "kyazdani42/nvim-web-devicons"

  -- Tree
    use 'kyazdani42/nvim-tree.lua'

  -- Buffer/Tabs
    use "akinsho/bufferline.nvim"

  -- Status Line
    use "nvim-lualine/lualine.nvim"

  -- Syntax Colors
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use "sheerun/vim-polyglot"

  -- Color Scheme
    use 'sainnhe/gruvbox-material' -- Slower
    --use "WIttyJudge/gruvbox-material.nvim" -- Less Feature
    --use "eddyekofo94/gruvbox-flat.nvim" -- 7% faster
    --use 'shaunsingh/nord.nvim'


  -- Discord Pressence
  use 'andweeb/presence.nvim' 

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

