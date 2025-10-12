if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

local map = vim.keymap.set

map("n", "<A-p>", "<Cmd>w<CR> <Cmd>below split | term python3 %<CR> i", { noremap = true, silent = true })

map("n", "<A-j>", "<Cmd>w<CR> <Cmd>below split | term node %<CR> i", { noremap = true, silent = true })

-- -- Python built-in terminal: {{{
-- map("n", "<F5>", function()
--   vim.cmd "w"
--   vim.cmd "below vsplit | term python %"
--   vim.cmd "startinsert"
-- end, { desc = "Python built-in terminal" })
-- -- }}}

-- -- ToggleTerm python: {{{
-- local astro = require "astrocore"
-- local python = vim.fn.executable "python" == 1 and "python" or vim.fn.executable "python3" == 1 and "python3"
-- if python then map("n", "<Leader>tp", function() astro.toggle_term_cmd(python) end, { desc = "ToggleTerm python" }) end
-- -- }}}

-- -- ToggleTerm python: {{{
-- local Terminal = require("toggleterm.terminal").Terminal
-- local file_name = vim.api.nvim_buf_get_name(0)
-- local python =
--   Terminal:new { cmd = 'python "' .. file_name .. '"', hidden = false, direction = "float", close_on_exit = false }
-- function _python_toggle() python:toggle() end
-- vim.api.nvim_set_keymap("n", "<leader>r", "<cmd>lua _python_toggle() <CR> ", { noremap = true, silent = true })
-- -- }}}
