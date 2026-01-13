if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "decaycs/decay.nvim",
  name = "decay",
  lazy = true,
  config = function()
    local decay = require "decay"

    decay.setup {
      palette_overrides = {
        background = "none",
      },

      italics = {
        code = true,
        comments = true,
      },

      nvim_tree = {
        contrast = true,
      },

      cmp = {
        block_kind = false,
      },
    }
  end,
}
