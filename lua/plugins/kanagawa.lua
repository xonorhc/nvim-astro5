if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "rebelot/kanagawa.nvim",
  lazy = true,
  opts = {
    compile = false,
    undercurl = true,
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = true,
    dimInactive = false,
    terminalColors = true,
    overrides = function(colors)
      local theme = colors.theme
      return {
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
        FloatTitle = { bg = "none" },
        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
        LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
      }
    end,
    theme = "wave",
    background = { dark = "wave", light = "lotus" },
    colors = {
      palette = {
        -- change all usages of these colors
        sumiInk0 = "#000000",
        fujiWhite = "#FFFFFF",
      },
      theme = {
        -- change specific usages for a certain theme, or for all of them
        wave = {
          ui = {
            float = {
              bg = "none",
            },
          },
        },
        dragon = {
          syn = {
            parameter = "yellow",
          },
        },
        all = {
          ui = {
            bg_gutter = "none",
          },
        },
      },
    },
  },
}
