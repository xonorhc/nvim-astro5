if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  {
    "maxmx03/fluoromachine.nvim",
    lazy = true,
    opts = {
      glow = true,
      theme = "retrowave", -- fluoromachine | delta | retrowave
      transparent = true,
      plugins = {
        neotree = false,
      },
      overrides = {
        ["@type"] = { italic = true, bold = false },
        ["@function"] = { italic = false, bold = false },
        ["@comment"] = { italic = true },
        ["@keyword"] = { italic = false },
        ["@constant"] = { italic = false, bold = false },
        ["@variable"] = { italic = true },
        ["@field"] = { italic = true },
        ["@parameter"] = { italic = true },
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
