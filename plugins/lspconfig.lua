local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "jsonls", "solargraph", "tsserver" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.elixirls.setup{
  -- Unix
  cmd = { "/Users/finnheemeyer/etc/nvim/mason/packages/elixir-ls/language_server.sh" };
  on_attach = on_attach,
  capabilities = capabilities,
}
