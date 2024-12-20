return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      level = "ERROR",
      stages = "fade",
      on_open = nil,
      on_close = nil,
      render = "wrapped-compact",
      timeout = 4000,
      max_width = nil,
      max_height = nil,
      background_colour = "CursorLine",
      minimum_width = 50,
    })
    vim.notify = require("notify")
  end,
  opts = {
    level = 3,
    render = "minimal",
    stages = "static",
  },
}
