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

        -- install formatters
        "stylua",
        "prettier",
        "isort",
        "black",
        "pgformatter",
        "shfmt",

        -- install debuggers
        "debugpy",

        -- install any other package
        "tree-sitter-cli",
        "bash-debug-adapter",
      },
    },
  },
}
