-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

local map = vim.keymap.set

map("n", "<A-n>", "<Cmd>w<CR> <Cmd>below split | term node %<CR> i", { noremap = true, silent = true })

map("n", "<A-p>", function()
  vim.cmd "w"
  vim.cmd "below split | term python %"
  vim.cmd "startinsert"
end, { desc = "Python built-in terminal" })

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

local node = terminal:new {
  cmd = 'node "' .. file_name .. '"',
  hidden = false,
  direction = "float",
  close_on_exit = false,
  start_in_insert = true,
}
function _node_toggle() node:toggle() end
vim.api.nvim_set_keymap("n", "<Leader>rn", "<cmd>lua _node_toggle()<CR>", { noremap = true, silent = true })
