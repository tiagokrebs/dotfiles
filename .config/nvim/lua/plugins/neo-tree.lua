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

        window = {
          mappings = {
            -- Navigate to parent directory or previous parent sibling directory
            ["<Left>"] = function(state)
              local node = state.tree:get_node()
              local parent = state.tree:get_node(node:get_parent_id())
              if parent and parent.type == "directory" then
                require("neo-tree.ui.renderer").focus_node(state, parent:get_id())
              end
            end,
            -- Navigate to child directory or next parent sibling directory
            ["<Right>"] = function(state)
              local node = state.tree:get_node()
              local parent = state.tree:get_node(node:get_parent_id())
              if not parent then return end
              local grandparent = state.tree:get_node(parent:get_parent_id())
              if not grandparent then return end
              -- Find next sibling of parent
              local found = false
              for _, child_id in ipairs(grandparent:get_child_ids()) do
                if found and state.tree:get_node(child_id).type == "directory" then
                  require("neo-tree.ui.renderer").focus_node(state, child_id)
                  return
                end
                if child_id == parent:get_id() then
                  found = true
                end
              end
            end,
          },
        },
      })
    end,
  },
}
