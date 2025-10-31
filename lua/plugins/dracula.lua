if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  {
    "Mofiqul/dracula.nvim",
    lazy = true,
    opts = {
      show_end_of_buffer = true,
      transparent_bg = true,
      lualine_bg_color = "NONE",
      italic_comment = true,
      overrides = {},
    },
  },
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "dracula",
    },
  },
}
