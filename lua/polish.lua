if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- multiple modes
map({ "i", "n" }, "<C-k>", "<Up>", { desc = "Move up" })
map({ "i", "n" }, "<C-j>", "<Down>", { desc = "Move down" })
map({ "i", "n" }, "<C-l>", "<Right>", { desc = "Move right" })
map({ "i", "n" }, "<C-h>", "<Left>", { desc = "Move right" })

-- mapping with a lua function
map("n", "<A-i>", function()
  -- do something
end, { desc = "Terminal toggle floating" })

-- Disable mappings
local nomap = vim.keymap.del
nomap("i", "<C-k>")
nomap("n", "<C-k>")
