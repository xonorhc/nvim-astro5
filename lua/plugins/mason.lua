-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        -- install language servers
        "lua-language-server",
        "pyright",
        "bash-language-server",
        "shellcheck",
        "marksman",
        "django-template-lsp",

        -- install formatters
        "stylua",
        "shfmt",
        "isort",
        "black",
        "prettier",

        -- install debuggers
        "debugpy",

        -- install any other package
        "tree-sitter-cli",
        "bash-debug-adapter",
      },
    },
  },
}
