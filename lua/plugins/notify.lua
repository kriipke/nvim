return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      stages = "fade",
      on_open = nil,
      on_close = nil,
      render = "wrapped-compact",
      timeout = 4000,
      max_width = nil,
      max_height = nil,
      background_colour = "Normal",
      minimum_width = 50,
    })
    vim.notify = require("notify")
  end,
}
