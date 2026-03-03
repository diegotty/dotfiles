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
      local tsserver_path = "/usr/lib/node_modules/typescript/bin/tsserver"
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
      vim.lsp.enable("lua_ls")
      vim.lsp.config( "ts_ls", {
        cmd = {tsserver_path, "--stdio"},
        init_options = {
          hostInfo = "neovim",
          provideFormatter = true,
        },
        filetypes = { 
          "javascript", 
          "javascriptreact", 
          "typescript", 
          "typescriptreact" 
        },
                name = "tsserver",
        root_dir = require('lspconfig.util').root_pattern("tsconfig.json", "jsconfig.json", "package.json", ".git"),
      })

      vim.lsp.enable("ts_ls")
      vim.lsp.enable("html")

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
      vim.lsp.enable("pyright")

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
