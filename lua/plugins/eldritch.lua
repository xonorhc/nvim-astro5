if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  {
    "eldritch-theme/eldritch.nvim",
    lazy = true,
    opts = {
      transparent = true,
      terminal_colors = true,
    },
  },
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "eldritch",
    },
  },
}
