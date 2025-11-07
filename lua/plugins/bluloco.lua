-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  "uloco/bluloco.nvim",
  lazy = true,
  dependencies = { "rktjmp/lush.nvim" },
  opts = {
    style = "dark",
    transparent = true,
    italics = false,
    terminal = vim.fn.has "gui_running" == 1,
    guicursor = true,
    rainbow_headings = false,
  },
}
