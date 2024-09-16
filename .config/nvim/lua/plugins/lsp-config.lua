return {
	{
		"williamboman/mason.nvim",
		config = function()
      require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "html", "clangd", "arduino_language_server" },
				PATH = "prepend",
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.jdtls.setup({})
			lspconfig.arduino_language_server.setup({
				cmd = {
					"arduino-language-server",
					"-clangd",
					"/usr/local/bin/clangd",
					"-cli",
					"/usr/local/bin/arduino-cli",
					"-cli-config",
					"$HOME/.arduino15/arduino-cli.yaml",
					"-fqbn",
					"arduino:avr:uno",
				},
				capabilities = capabilities,
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
