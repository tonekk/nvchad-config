
local M = {}

M.treesitter = {
  ensure_installed = {
    "html",
    "css",
    "ruby",
    "javascript",
    "typescript",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "emmet-ls",
    "json-lsp",

    -- ruby
    "rubocop",
    "solargraph",

    -- shell
    "shellcheck",
    "rubocop",
  },
}

M.telescope = {
  extensions_list = {
    "fzf"
  }
}

M.blankline = {
  show_current_context_start = false,
}

return M
