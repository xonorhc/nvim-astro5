if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "EdenEast/nightfox.nvim",
  lazy = true,
  opts = {
    options = {
      compile_path = vim.fn.stdpath "cache" .. "/nightfox",
      compile_file_suffix = "_compiled",
      transparent = true,
      terminal_colors = true,
      dim_inactive = false,
      module_default = true,
      colorblind = {
        enable = false,
        simulate_only = false,
        severity = {
          protan = 0,
          deutan = 0,
          tritan = 0,
        },
      },
    },
    groups = { all = { NormalFloat = { link = "Normal" } } },
  },
}
