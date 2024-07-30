-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- added by Mike
local additional_servers = {
  "kotlin_language_server",
  "jdtls",
  "ruby_lsp",
  "lemminx",
}
for _, v in ipairs(additional_servers) do
  table.insert(servers, v)
end

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.tsserver.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
