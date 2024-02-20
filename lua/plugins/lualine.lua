return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "horizon",
      },
    })
  end,
},
-- use mini.starter instead of alpha
{ import = "lazyvim.plugins.extras.ui.mini-starter" },
-- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc
{ import = "lazyvim.plugins.extras.lang.json" }
-- add any tools you want to have installed below
