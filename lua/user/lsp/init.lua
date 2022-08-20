--[[ LSP ]]--
local status_ok, nvim_lsp = pcall(require, "lspconfig")
if not status_ok then
    vim.notify("Lsp Config NOT Found!")
	return
end

-- nvim cmp
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
local servers = { 'clangd', 'rust_analyzer' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end

