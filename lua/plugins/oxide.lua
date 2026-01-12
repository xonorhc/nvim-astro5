if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "oxidescheme/oxide.nvim",
  lazy = true,
  config = function()
    require("oxide").setup {
      transparent = true, -- Enable transparent background
      terminal_colors = true, -- Configure terminal colors

      styles = {
        comments = { italic = true },
        keywords = { bold = true },
        functions = {},
        variables = {},
        strings = {},
        booleans = {},
        numbers = {},
      },

      -- Override colors
      on_colors = function(colors)
        --   colors.red = "#ff0000" -- Make red more intense
      end,

      -- Override highlight groups
      on_highlights = function(highlights, colors) highlights.Comment = { fg = colors.green, italic = true } end,
    }
  end,
}
