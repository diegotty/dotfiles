-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
  -- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " " 
vim.g.maplocalleader ="\\"

-- relative numbers
vim.opt.number = true
vim.wo.relativenumber = true
vim.splitright = true
vim.splitbelow = true
vim.api.nvim_create_autocmd('TextYankPost', {
  pattern = '*',
  callback = function() vim.highlight.on_yank({timeout=450, higroup='Visual'}) end 
})
vim.g.have_nerd_font = true
require("vim-options")
-- Setup lazy.nvim
require("lazy").setup("plugins")
vim.keymap.set('', '<up>', function () print('you can do it'); end)
vim.keymap.set('', '<down>', function () print('still in hard mode'); end)
vim.keymap.set('', '<left>', function () print('i believe in you'); end)
vim.keymap.set('', '<right>', function () print('you\'re doing great'); end)
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
vim.keymap.set('', '<C-u>', '<C-u>zz')
vim.keymap.set('', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<leader>c', ':noh<CR>')

-- vim.api.nvim_create_user_command("Run", function()
--   local path = vim.api.nvim_buf_getname(0);
--   print(path);
-- end, {})
--
vim.keymap.set("n", "<leader>st", function()
  -- vim.cmd("cd %:p:h")
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0,10)
  vim.fn.feedkeys("a")
end)
