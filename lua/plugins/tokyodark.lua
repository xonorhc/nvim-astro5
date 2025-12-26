if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "tiagovla/tokyodark.nvim",
  lazy = true,
  opts = {
    transparent_background = true,
    gamma = 1.00,
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
      identifiers = { italic = true },
      functions = {},
      variables = {},
    },
    terminal_colors = true,
  },
}
