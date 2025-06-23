return {
  -- nvim-treesitter for syntax highlighting and more
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        -- ensure_installed = { "typescript"},
        highlight = { enable = true },
        indent = { enable = true },
      }
    end,
  },

  -- treesitter-context for sticky function/class context
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup()
    end,
  },
}
