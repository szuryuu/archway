require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "clangd",
  "pyright",
  "gopls",
  "ts_ls",
  "terraformls",
  "terraform",
  "dockerls",
  "yamlls",
  "intelephense",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
