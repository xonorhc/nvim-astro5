if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = { filetypes = { extension = {
      html = "htmldjango",
    } } },
  },
  {
    "AstroNvim/astrolsp",
    opts = {
      config = {
        djlsp = {
          cmd = { "djls" },
          filetypes = { "django-html", "htmldjango", "python" },
          root_dir = function(fname)
            local util = require "lspconfig.util"
            local root = util.root_pattern("manage.py", "pyproject.toml")(fname)
            return root or vim.fn.getcwd()
          end,
          settings = {},
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "htmldjango" })
      end
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed =
        require("astrocore").list_insert_unique(opts.ensure_installed, { "django-template-lsp", "djlint" })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "djlsp" })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "djlint" })
      opts.handlers = opts.handlers or {}

      opts.handlers.sqlfluff = function()
        local null_ls = require "null-ls"
        null_ls.register(null_ls.builtins.diagnostics.djlint)
        null_ls.register(null_ls.builtins.formatting.djlint)
      end
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        htmldjango = { "djlint" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        htmldjango = { "djlint" },
      },
    },
  },
}
