return {
  "L3MON4D3/LuaSnip",
  -- follow latest release.
  version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  -- install jsregexp (optional!).
  build = "make install_jsregexp",
  dependencies = {
    "rafamadriz/friendly-snippets", -- a large collection of ready-to-use snippets
  },
  config = function()
    -- load vscode-style snippets
		require("luasnip.loaders.from_vscode").lazy_load()

    -- load custum lua snippets
    require("luasnip.loaders.from_lua").lazy_load({ paths = "./lua/luasnip/" })

    -- idk
    local ls = require("luasnip")
    ls.setup({
      update_events = {"TextChanged", "TextChangedI"}
    })
    
    -- keybinds
    vim.keymap.set({"i"}, "<C-l>", function() ls.expand() end, {silent = true, desc = "expand autocomplete"})
    vim.keymap.set({"i", "s"}, "<C-j>", function() ls.jump( 1) end, {silent = true, desc = "next autocomplete"})
    vim.keymap.set({"i", "s"}, "<C-k>", function() ls.jump(-1) end, {silent = true, desc = "previous autocomplete"})
    vim.keymap.set({"i", "s"}, "<C-E>", function() if ls.choice_active() then ls.change_choice(1) end end, {silent = true})
  end,
}
