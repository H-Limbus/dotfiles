-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

--python run
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F5>",
      "<ESC>:w<CR>:split<CR>:te python %<CR>",
      { silent = true, noremap = true }
    )
  end,
})

--C run
vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F7>",
      "<ESC>:w<CR>:split<CR>:te gcc % -o %< && %<<CR>",
      { silent = true, noremap = true }
    )
  end,
})
