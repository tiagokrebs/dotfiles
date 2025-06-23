return {
  -- LSP Config
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      -- Python
      require("lspconfig").pylsp.setup({
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
      -- Todo: Typescript
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
    config = function()
      require("mason-lspconfig").setup(
      -- { ensure_installed = { "tsserver"} }
      )
    end,
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
  },
}
