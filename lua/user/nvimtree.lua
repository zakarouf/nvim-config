local tree_cb = require('nvim-tree.config').nvim_tree_callback
require('nvim-tree').setup {
  open_on_setup = true,
  diagnostics = {
    enable = true,
  },
  view = {
    width = 25,
    height = 25,
    hide_root_folder = true,
    side = 'left',
  },
  git = {
    ignore = false,
  }
}

vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

