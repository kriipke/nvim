-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- https://github.com/NeogitOrg/neogit#events
local group = vim.api.nvim_create_augroup("MyCustomNeogitEvents", { clear = true })
vim.api.nvim_create_autocmd("User", {
  pattern = "NeogitPushComplete",
  group = group,
  callback = require("neogit").close,
})
