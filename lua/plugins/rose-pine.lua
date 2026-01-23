if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup {
      extend_background_behind_borders = false,

      styles = {
        bold = false,
        italic = false,
        transparency = true,
      },

      highlight_groups = {
        Comment = { italic = true },
      },
    }
  end,
}
