-- load defaults i.e lua_ls
require("nvchad.configs.lspconfig").defaults()
local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- Updated server list
local servers = { "html", "cssls", "eslint", "gopls", "pyright" }

-- Common LSP setup
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- Specific setup for TypeScript
lspconfig.ts_ls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

-- Specific setup for Rust Analyzer (keeping this from the previous configuration)
lspconfig.rust_analyzer.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = true,
      },
      check = {
        command = "check",
        extraArgs = { "--target-dir", "/tmp/rust-analyzer-check" },
      },
    },
  },
}
