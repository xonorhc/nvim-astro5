if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "Mofiqul/dracula.nvim",
  lazy = true,
  opts = {
    transparent_bg = true,
    lualine_bg_color = "NONE",
    italic_comment = true,
    overrides = {
      NormalFloat = { bg = "none" },
      FloatBorder = { bg = "none" },
      FloatTitle = { bg = "none" },
    },
  },
}
