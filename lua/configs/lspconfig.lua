-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

local util = require "lspconfig/util"
lspconfig["asm_lsp"].setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  filetypes = { "asm", "s", "S" },
  cmd = { "asm-lsp" },
  root_dir = util.root_pattern ".git",
}
--
-- lsps with default config
--for _, lsp in ipairs(servers) do
-- lspconfig[lsp].setup {
--  on_attach = nvlsp.on_attach,
-- on_init = nvlsp.on_init,
-- capabilities = nvlsp.capabilities,
-- }
--end
