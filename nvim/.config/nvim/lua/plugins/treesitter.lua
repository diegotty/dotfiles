return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    local treesitter = require("nvim-treesitter")

    treesitter.setup({})

    treesitter.install({
      "latex",
      "markdown",
      "markdown_inline",
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "tex",
        "markdown",
      },
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
