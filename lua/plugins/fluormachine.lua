if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  {
    "maxmx03/fluoromachine.nvim",
    lazy = true,
    opts = {
      glow = true,
      theme = "retrowave",
      transparent = true,
      plugins = {
        neotree = false,
      },
    },
  },
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "fluoromachine",
    },
  },
}
