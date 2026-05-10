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
  "helm_ls",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

vim.lsp.config("yamlls", {
  settings = {
    yaml = {
      schemaStore = { enable = false, url = "" },
      schemas = vim.tbl_extend("force", require("schemastore").yaml.schemas(), {
        ["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.30.0-standalone-strict/all.json"] = {
          "*.k8s.yaml",
          "*.k8s.yml",
          "k8s/**/*.yaml",
          "kubernetes/**/*.yaml",
          "manifests/**/*.yaml",
        },
      }),
      validate = true,
      hover = true,
      completion = true,
    },
  },
})

vim.lsp.config("helm_ls", {
  settings = {
    ["helm-ls"] = {
      yamlls = {
        enabled = false,
      },
    },
  },
})
