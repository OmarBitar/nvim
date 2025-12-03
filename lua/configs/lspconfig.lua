require("nvchad.configs.lspconfig").defaults()

local vue_language_server_path =
  "/opt/homebrew/lib/node_modules/@vue/language-server"

local vue_plugin_server_path =
  "/opt/homebrew/lib/node_modules/@vue/typescript-plugin/node_modules/@vue/language-core"

local vue_plugin = {
  name = "@vue/typescript-plugin",
  location = vue_plugin_server_path,
  languages = { "vue" },
  configNamespace = "typescript",
}

local vtsls_config = {
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = { vue_plugin },
      },
    },
  },
  filetypes = {
    "typescript",
    "javascript",
    "javascriptreact",
    "typescriptreact",
    "vue",
  },
}

local vue_ls_config = {
  init_options = {
    vue = {
      serverPath = vue_language_server_path,
    },
  },
}

local intelephense_config = {
  filetypes = { "php" },

  settings = {
    intelephense = {
      files = { maxSize = 5000000 },
    },
  },

  on_attach = require("nvchad.configs.lspconfig").on_attach,
  capabilities = require("nvchad.configs.lspconfig").capabilities,
}

vim.lsp.config("intelephense", intelephense_config)
vim.lsp.config("vtsls", vtsls_config)
vim.lsp.config("vue_ls", vue_ls_config)

vim.lsp.enable({ "vue_ls", "vtsls", "intelephense" })
