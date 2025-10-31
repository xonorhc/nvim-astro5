if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  {
    "sainnhe/sonokai",
    lazy = true,
    dependencies = {
      "AstroNvim/astrocore",
      opts = {
        options = {
          g = {
            sonokai_dim_inactive_windows = 1,
            sonokai_style = "maia", -- Available values: 'default', 'atlantis', 'andromeda', 'shusia', 'maia', 'espresso'
            sonokai_cursor = "yellow",
            sonokai_transparent_background = true,
          },
        },
      },
    },
  },
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "sonokai",
    },
  },
}
