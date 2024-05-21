return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "horizon",
      },
      require("transparent").clear_prefix("lualine"),
    })
  end,
}
