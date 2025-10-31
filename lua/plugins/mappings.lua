-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          ["<Leader>b"] = { desc = "Buffers" },
          ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
          [";"] = { ":", desc = "CMD enter command mode" },
          ["<Leader><Tab>"] = { function() require("astrocore.buffer").nav(1) end, desc = "Next buffer" },
        },
        i = {
          ["<C-s>"] = { "<ESC>:w!<cr>", desc = "Save File" },
          ["<C-h>"] = { "<Left>", desc = "Move left" },
          ["<C-j>"] = { "<Down>", desc = "Move down" },
          ["<C-k>"] = { "<Up>", desc = "Move up" },
          ["<C-l>"] = { "<Right>", desc = "Move right" },
        },
        t = {},
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
