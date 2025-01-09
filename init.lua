require("config.lazy")

-- Go to previous scheme in list
vim.api.nvim_set_keymap(
  "n",
  "<A-n>",
  '<cmd>lua require("luisiacc.cycle_colorschemes").go_to_scheme(-1)<CR>',
  { noremap = true, silent = true }
)
-- Go to next scheme in list
vim.api.nvim_set_keymap(
  "n",
  "<A-m>",
  '<cmd>lua require("luisiacc.cycle_colorschemes").go_to_scheme(1)<CR>',
  { noremap = true, silent = true }
)
vim.opt.termguicolors = true
vim.o.background = "dark"
vim.cmd.colorscheme("oxocarbon")
require("bufferline").setup({})
