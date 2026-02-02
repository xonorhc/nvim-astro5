if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  {
    "tigion/nvim-asciidoc-preview",
    ft = { "asciidoc" },
    build = "cd server && npm install --omit=dev --no-save",
    ---@module 'asciidoc-preview'
    ---@type asciidoc-preview.Config
    opts = {
      server = {
        converter = "js",
        hostname = "localhost",
        port = 11235,
      },
      preview = {
        position = "sync",
      },
    },
  },
  -- { "marioortizmanero/adoc-pdf-live.nvim", config = "require('adoc_pdf_live').setup()", },
  -- { "habamax/vim-asciidoctor" },
}
