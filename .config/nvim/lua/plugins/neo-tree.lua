return {
  {
    "antosha417/nvim-lsp-file-operations",

    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-neo-tree/neo-tree.nvim",
    },
    config = function()
      require("lsp-file-operations").setup()
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window
    },
    lazy = false,
    init = function()
      -- do not open
    end,
    config = function()
      require("neo-tree").setup({
        enable_git_status = true,
        enable_diagnostics = true,
        default_component_configs = {
          icon = { enabled = false }
        },
        filesystem = {
          bind_to_cwd = true,
          cwd_target = {
            sidebar = "window",
            current = "window",
          },
          filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
          },
          follow_current_file = {
            enabled = true
          },
        },
      })
    end,
  },
}
