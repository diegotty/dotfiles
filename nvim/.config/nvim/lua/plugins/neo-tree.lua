return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      bind_to_cwd = true,
      follow_current_file = { enabled = true },
      cwd_target = {
        sidebar = "global",
        current = "global",
      },
    },
  },
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left <CR>", {})
  end,
}
