--[[ Makeup => Color, tabs, Statuslines, Trees ]]--
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- Colo Config
vim.cmd [[ colorscheme gruvbox-material ]] -- Load

--[[ Buffer ]]--
require("bufferline").setup{}

--[[ Statusline ]]--
require('lualine').setup()
