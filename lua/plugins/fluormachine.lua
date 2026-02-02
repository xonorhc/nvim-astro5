if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "maxmx03/fluoromachine.nvim",
  lazy = true,
  opts = {
    theme = "retrowave",
    brightness = 0.05,
    glow = true,
    transparent = true,
    overrides = {
      ["@type"] = { italic = true, bold = false },
      ["@function"] = { italic = false, bold = false },
      ["@comment"] = { italic = true },
      ["@keyword"] = { italic = false },
      ["@constant"] = { italic = false, bold = false },
      ["@variable"] = { italic = false },
      ["@field"] = { italic = true },
      ["@parameter"] = { italic = true },
      NormalFloat = { bg = "none" },
      FloatBorder = { bg = "none" },
      FloatTitle = { bg = "none" },
    },
  },
}
