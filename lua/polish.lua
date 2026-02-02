if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

local terminal = require("toggleterm.terminal").Terminal
local file_name = vim.api.nvim_buf_get_name(0)

local python = terminal:new {
  cmd = 'python "' .. file_name .. '"',
  hidden = false,
  direction = "float",
  close_on_exit = false,
  start_in_insert = true,
}
function _python_toggle() python:toggle() end
vim.api.nvim_set_keymap("n", "<Leader>rp", "<cmd>lua _python_toggle()<CR>", { noremap = true, silent = true })
