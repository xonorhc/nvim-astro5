if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "EdenEast/nightfox.nvim",
  lazy = true,
  opts = {
    options = {
      transparent = true,
      module_default = false,
      modules = {
        aerial = true,
        cmp = true,
        ["dap-ui"] = true,
        dashboard = true,
        diagnostic = true,
        gitsigns = true,
        native_lsp = true,
        neotree = true,
        notify = true,
        symbol_outline = true,
        telescope = true,
        treesitter = true,
        whichkey = true,
      },
    },
    groups = { all = { NormalFloat = { link = "Normal" } } },
  },
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "carbonfox",
    },
  },
}
