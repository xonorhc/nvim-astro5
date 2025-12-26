if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "scottmckendry/cyberdream.nvim",
  lazy = true,
  opts = {
    variant = "dark",
    transparent = true,
    saturation = 1,
    italic_comments = true,
    hide_fillchars = false,
    borderless_pickers = false,
    terminal_colors = true,
    cache = false,
    highlights = {
      Comment = { fg = "#696969", bg = "NONE", italic = true },
    },
  },
}
