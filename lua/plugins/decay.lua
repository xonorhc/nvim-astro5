if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "decaycs/decay.nvim",
  name = "decay",
  lazy = true,
  config = function()
    local decay = require "decay"

    local opt = vim.opt

    opt.background = "dark"

    decay.setup {
      style = "default",

      -- enables italics in code keywords & comments.
      italics = {
        code = true,
        comments = true,
      },

      -- enables contrast when using nvim tree.
      nvim_tree = {
        contrast = true,
      },

      cmp = {
        block_kind = false,
      },

      palette_overrides = {
        background = "none",
      },
    }
  end,
}
