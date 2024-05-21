return {
  {
    "NLKNguyen/papercolor-theme",
    config = function()
      vim.cmd([[
      let g:PaperColor_Theme_Options = {
      \    'theme': {
      \      'default': {
      \        'allow_bold': 1,
      \        'allow_italic': 1,
      \        'transparent_background': 1,
      \        'override' : {
      \          'color00' : ['#d3d3d3', '232'],
      \          'linenumber_bg' : ['#efefef', '232']
      \        }
      \      },
      \      'default.dark': {
      \        'override' : {
      \          'color00' : ['#080808', '232'],
      \          'linenumber_bg' : ['#080808', '232']
      \        }
      \      }
      \    }
      \  }
    ]])
      vim.api.nvim_set_option("termguicolors", true)
      vim.api.nvim_set_option("background", "dark")
      vim.o.colorscheme = "PaperColor"
    end,
  },
}
