if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "rebelot/kanagawa.nvim",
  lazy = true,
  opts = {
    commentStyle = { italic = true },
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    transparent = true,
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
    colors = {
      palette = {
        sumiInk0 = "#000000",
        fujiWhite = "#FFFFFF",
      },
      theme = {
        all = {
          ui = {
            bg_gutter = "none",
          },
        },
      },
    },
  },
}
