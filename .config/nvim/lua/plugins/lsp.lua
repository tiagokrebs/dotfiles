return {
  -- LSP Config
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local cmp_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
      if cmp_ok then
        capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
      end

      -- Python
      require("lspconfig").pylsp.setup({
        capabilities = capabilities,
        settings = {
          pylsp = {
            plugins = {
              pycodestyle = {
                ignore = { "E501" },
                maxLineLength = 120,
                identSize = 4,
              },
              flake8 = {
                enabled = false,
              },
            },
          },
        },
      })

      -- Lua
      require("lspconfig").lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            format = {
              enable = true,
              indent_style = "space",
              indent_size = "2",
            },
          },
        },
      })

      -- Typescript
      require("lspconfig").ts_ls.setup({
        capabilities = capabilities,
        settings = {
          typescript = {
            format = {
              indentSize = 2,
              convertTabsToSpaces = true,
              tabSize = 2,
            },
          },
          javascript = {
            format = {
              indentSize = 2,
              convertTabsToSpaces = true,
              tabSize = 2,
            },
          },
        },
      })

      -- JSON
      require("lspconfig").jsonls.setup({
        capabilities = capabilities,
        settings = {
          json = {
            format = {
              enable = true,
            },
            validate = { enable = true },
          },
        },
      })
      -- Diagnostics configs
      vim.diagnostic.config({
        virtual_text = true,      -- set to false to disable inline diagnostics
        signs = false,            -- show signs in the gutter
        underline = true,         -- underline the text
        update_in_insert = false, -- only update diagnostics outside of insert mode
        severity_sort = true,     -- sort diagnostics by severity
      })
    end,
  },
  -- Mason for managing LSP servers
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  -- Mason LSP bridge
  {
    "williamboman/mason-lspconfig.nvim",
    --    config = function()
    --      require("mason-lspconfig").setup()
    --    end,
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
  },
}
