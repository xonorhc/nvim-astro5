if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "sainnhe/sonokai",
  lazy = true,
  dependencies = {
    "AstroNvim/astrocore",
    opts = {
      options = {
        g = {
          sonokai_style = "atlantis",
          sonokai_transparent_background = 2,
          sonokai_float_style = "blend",
        },
      },
    },
  },
}
