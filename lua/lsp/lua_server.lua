require'lspconfig'.sumneko_lua.setup {
	on_attach = require('lsp.handler'),
	capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = {'vim', 'use'},
			},
		},
	},
}

