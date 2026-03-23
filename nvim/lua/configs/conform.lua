local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    json = { "prettier" },
    markdown = { "prettier" },
    yaml = { "prettier" },        
    python = { "black" },
    rust = { "rustfmt" },
    go = { "gofmt" },
    terraform = { "terraform_fmt" },
    sh = { "shfmt" },
    bash = { "shfmt" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
return options
