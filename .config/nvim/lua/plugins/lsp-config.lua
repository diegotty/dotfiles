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
				ensure_installed = { "lua_ls", "ts_ls", "html", "clangd", "arduino_language_server", "pyright"},
				PATH = "prepend",
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.lsp.config("lua_ls", {
				capabilities = capabilities
			})
      vim.lsp.enable("lua_ls")

			vim.lsp.config("ts_ls", {
				capabilities = capabilities,
			})
      vim.lsp.enable("ts_ls")

			vim.lsp.config("html", {
				capabilities = capabilities,
			})
      vim.lsp.enable("html")

			vim.lsp.config("jdtls", {})
      vim.lsp.enable("jdtls")

			vim.lsp.config("arduino_language_server", {
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
      vim.lsp.enable("arduino_language_server")

      vim.lsp.config("pyright",{})
      vim.lsp.enable("pyright")

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
