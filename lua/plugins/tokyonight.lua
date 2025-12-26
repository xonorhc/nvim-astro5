if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    style = "moon",
    transparent = true,
    terminal_colors = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    day_brightness = 0.3,
    dim_inactive = false,
    lualine_bold = false,
    plugins = {
      all = package.loaded.lazy == nil,
      auto = true,
    },
  },
}
