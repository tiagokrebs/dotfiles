return {
  {
    "github/copilot.vim",
  },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   requires = {
  --     "copilotlsp-nvim/copilot-lsp",
  --   },
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function()
  --     require("copilot").setup({
  --       suggestion = { enabled = true },
  --       panel = { enabled = false },
  --     })
  --   end,
  -- },
  -- {
  --   "CopilotC-Nvim/CopilotChat.nvim",
  --   dependencies = {
  --     { "github/copilot.vim" },
  --     { "nvim-lua/plenary.nvim", branch = "master" },
  --   },
  --   build = "make tiktoken",
  --   config = function()
  --     vim.opt.splitright = true
  --     require("CopilotChat").setup({
  --       window = {
  --         splitright = true,
  --         width = 80,
  --       },
  --       prompts = {
  --         AssistLogToEvent = {
  --           prompt =
  --           "Transform the JSON below into a structured JS event object. Don't add any addytional properties, comments or values. Use single quotes for string values.",
  --         },
  --       },
  --     })
  --   end,
  -- },
  {
    "yetone/avante.nvim",
    build = "make",
    event = "VeryLazy",
    version = false, -- don't use * here
    ---@module 'avante'
    ---@type avante.Config
    opts = {
      instructions_file = "avante.md",
      provider = "copilot",
      default_mode = "ask",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "hrsh7th/nvim-cmp",
      "ibhagwan/fzf-lua",
      "zbirenbaum/copilot.lua",
      {
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  }
}
