local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    vim.notify("Lsp Installer NOT Found!")
	return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}



	 if server.name == "sumneko_lua" then
	 	local sumneko_opts = require("user.lsp.settings.sumneko_lua")
	 	opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	 end
    
        if server.name == "clangd" then
            print "GOT CLANGD"
        end

        --[[
        local opts_settings_mod = "user.lsp.settings." .. server.name
        local opts_status_ok, lsp_opts = pcall(require, opts_settings)
        if opts_status_ok then
            opts = vim.tbl_deep_extend.("force", lsp_opts, opts)
        end
        ]]--

        --[[
	if server.name == "pyright" then
	    local pyright_opts = require("user.lsp.settings.pyright")
	    opts = vim.tbl_deep_extend("force", pyright_opts, opts)
	end
        ]]--

	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)
