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

      -- Pyhton
      require("lspconfig").pylsp.setup({
        capabilities = capabilities,
        -- cmd = { vim.fn.expand("./.venv/bin/python"), "-m", "pylsp" },
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

      -- TypeScript / JavaScript
      require("lspconfig").ts_ls.setup({
        capabilities = capabilities,
        root_dir = require("lspconfig.util").root_pattern(".git"),
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

      -- Markdown
      require("lspconfig").marksman.setup({
        capabilities = capabilities,
      })

      -- -- Cspell (disabled by default, enable with keybind)
      -- require("lspconfig.configs").cspell = {
      --   default_config = {
      --     cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/cspell-lsp"), "--stdio" },
      --     filetypes = {
      --       "lua", "python", "javascript", "typescript", "markdown", "text", "json",
      --       "html", "css", "yaml", "gitcommit"
      --     },
      --     root_dir = require("lspconfig").util.root_pattern(".cspell.json", "cspell.config.js", ".git"),
      --     single_file_support = true,
      --     settings = {},
      --   },
      -- }
      -- vim.keymap.set("n", "<leader>cs", function()
      --   require("lspconfig").cspell.setup({
      --     capabilities = capabilities,
      --     init_options = {
      --       configPath = vim.fn.expand("~/.cspell.json"),
      --     },
      --   })
      --   vim.notify("Cspell enabled for this session", vim.log.levels.INFO)
      -- end, { desc = "Enable Cspell LSP" })
      --

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
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "pylsp",
          "jsonls"
        },
        automatic_installation = true,
      })
    end,
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
  },
}
