return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  keys = { { "<F3>", "<Plug>(copilot-accept-word)", desc = "Symbols Outline" } },
  opts = {
    suggestion = { enabled = true },
    panel = { enabled = true },
    filetypes = {
      markdown = true,
      help = true,
    },
  },
}
