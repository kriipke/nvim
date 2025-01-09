return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = { "papercolor", "ayu-dark" },
      livePreview = true, -- Apply theme while picking. Default to true.
    })
  end,
}
