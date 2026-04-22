local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    -- javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    -- vue = { "prettier" },
    json = { "prettier" },
    markdown = { "prettier" },
    yaml = { "ymlfmt" },
    python = { "black" },
    rust = { "rustfmt" },
    go = { "gofmt" },
    terraform = { "terraform_fmt" },
    sh = { "shfmt" },
    bash = { "shfmt" },
    php = { "php_cs_fixer" }, -- Vanilla PHP
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
  formatters = {
    php_cs_fixer = {
      env = {
        PHP_CS_FIXER_IGNORE_ENV = "1",
      },
      args = {
        "--cache-file=/tmp/.php-cs-fixer.cache",
        "fix",
        "$FILENAME",
      },
    },
  },
}
return options
