return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      livePreview = true,
      themes = {
        {
          name = "papercolor - dark",
          colorscheme = "PaperColor",
          before = [[
          vim.opt.background = "dark"
        ]],
        },
        {
          name = "papercolor - light",
          colorscheme = "PaperColor",
          before = [[
          vim.opt.background = "light"
        ]],
          after = [[-- Same as before, but after if you need it]],
        },
        {
          name = "ayu - light",
          colorscheme = "ayu-dark",
          before = [[
          vim.opt.background = "dark"
        ]],
          after = [[-- Same as before, but after if you need it]],
        },
        {
          name = "ayu - dark",
          colorscheme = "ayu-light",
          before = [[
          vim.opt.background = "light"
        ]],
          after = [[-- Same as before, but after if you need it]],
        },
      },
    })
  end,
}
