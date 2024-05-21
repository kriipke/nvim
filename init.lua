require("config.lazy")

vim.opt.termguicolors = true
vim.o.background = "light"
vim.cmd.colorscheme("PaperColor")
-- vim.cmd.colorscheme("oxocarbon")
-- vim.cmd.colorscheme("monochrome")
-- vim.cmd.colorscheme("nightcity-kabuki")
require("bufferline").setup({})
