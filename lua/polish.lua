-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

local map = vim.keymap.set

-- Python built-in terminal: {{{
-- map("n", "<leader>r", "<Cmd>w<CR> <Cmd>below split | term python3 %<CR> i", { noremap = true, silent = true })
-- }}}

-- Python built-in terminal: {{{
-- map("n", "<F5>", function()
--   vim.cmd "w"
--   vim.cmd "below split | term python %"
--   vim.cmd "startinsert"
-- end, { desc = "Python built-in terminal" })
-- }}}

-- Run .py file via terminal: {{{
-- local function run_curr_python_file()
--   local file_name = vim.api.nvim_buf_get_name(0)
--   local py_cmd = vim.api.nvim_replace_termcodes('python "' .. file_name .. '"<cr>', true, false, true)
--   vim.cmd ":ToggleTerm direction=float"
--   vim.api.nvim_feedkeys(py_cmd, "t", false)
-- end
-- map({ "n" }, "<A-r>", "", {
--   desc = "Run .py file via terminal",
--   callback = run_curr_python_file,
-- })
-- }}}

-- ToggleTerm python: {{{
-- local astro = require "astrocore"
-- local python = vim.fn.executable "python" == 1 and "python" or vim.fn.executable "python3" == 1 and "python3"
-- if python then map("n", "<Leader>r", function() astro.toggle_term_cmd(python) end, { desc = "ToggleTerm python" }) end
-- }}}

local Terminal = require("toggleterm.terminal").Terminal
local file_name = vim.api.nvim_buf_get_name(0)
local python = Terminal:new { cmd = 'python "' .. file_name .. '"', hidden = true, direction = "float" }
function _python_toggle() python:toggle() end
vim.api.nvim_set_keymap("n", "<leader>r", "<cmd>lua _python_toggle() <CR> ", { noremap = true, silent = true })
