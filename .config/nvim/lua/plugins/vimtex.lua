-- huge
return {
  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_quickfix_open_on_warning = 0
      vim.g.vimtex_quickfix_open_on_error = 1
      vim.g.vimtex_view_method = "zathura"
      -- vim.g.vimtex_quickfix_method = "info"
    end,
    config = function()
      vim.cmd("filetype plugin indent on")
      vim.cmd("syntax enable")
    end,
  },
}
