<<<<<<< HEAD
-- return {
--   "ayu-theme/ayu-vim",
--   config = function()
--     require("ayu").setup({
--       mirage = true,
--       overrides = {
--         Normal = { bg = "None" },
--         ColorColumn = { bg = "None" },
--         SignColumn = { bg = "None" },
--         Folded = { bg = "None" },
--         FoldColumn = { bg = "None" },
--         CursorLine = { bg = "None" },
--         CursorColumn = { bg = "None" },
--         WhichKeyFloat = { bg = "None" },
--         VertSplit = { bg = "None" },
--       },
--     })
--   end,
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "ayu",
--     },
--   },
-- }
=======
>>>>>>> ea69152 (first changes to boilerplate lazy.nvim bootstrapping repo)
return {
  "Shatur/neovim-ayu",
  config = function()
    require("ayu").setup({
      mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
      overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
    })
  end,
}
