if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  {
    "olivercederborg/poimandres.nvim",
    lazy = true,
    opts = {
      bold_vert_split = false,
      -- dim_nc_background = false,
      disable_background = true,
      disable_float_background = true,
      disable_italics = false,
    },
  },
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "poimandres",
    },
  },
}
