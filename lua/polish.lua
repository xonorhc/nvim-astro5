-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

vim.keymap.set("n", "<F5>", function()
  -- Open a terminal in a split
  vim.cmd "below split | terminal python3 %"

  -- Get the current file name
  local current_file = vim.fn.expand "%:p"

  -- Send the command to run the current file
  vim.fn.feedkeys("a" .. current_file .. "<CR>", "t")
end)
