return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
      ignore_install = { 'org'},
			highlight = { enable = true },
			indent = { enable = true },
      ensure_installed = {
        "latex" -- 4 syntax highlighting
      }
		})
	end,
}
