-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "bash",
      "python",
      "javascript",
      "html",
      "css",
      "markdown",
      "sql",
      "csv",
      "dockerfile",
    },
  },
}
