if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "ellisonleao/gruvbox.nvim",
  lazy = true,
  opts = {
    terminal_colors = true,
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
      strings = false,
      emphasis = false,
      comments = true,
      operators = false,
      folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    inverse = true,
    contrast = "hard",
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = true,
  },
}
