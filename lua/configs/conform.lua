local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    ts = { "prettier" },
    tsx = { "prettier" },
    js = { "prettier" },
    jsx = { "prettier" },
    go = { "gofmt" },
    py = { "black", "isort", "autopep8" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
return options
