return {
  "nvim-lualine/lualine.nvim",
<<<<<<< HEAD
  require("lualine").setup({
    options = {
      theme = "ayu",
    },
  }),
  options = { theme = ayu },
=======
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "horizon",
      },
    })
  end,
>>>>>>> ea69152 (first changes to boilerplate lazy.nvim bootstrapping repo)
}
