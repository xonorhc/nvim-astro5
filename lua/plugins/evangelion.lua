-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "xero/evangelion.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true,
    overrides = {
      keyword = { fg = "#00ff00", bg = "#222222", undercurl = true },
      ["@boolean"] = { link = "Special" },
    },
  },
}
