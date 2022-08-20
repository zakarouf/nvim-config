--[[ Makeup => Color, tabs, Statuslines, Trees ]]--
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- Colo Config
vim.g.gruvbox_material_better_performance = 1
vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_diagnostic_text_highlight = 1
vim.cmd [[ colorscheme gruvbox-material ]] -- Load

--[[ Buffer ]]--
require("bufferline").setup{}

--[[ Statusline ]]--
require('lualine').setup{
    options = {
        theme = 'gruvbox-material'
    }
}
