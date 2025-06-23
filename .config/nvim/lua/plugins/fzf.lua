return {
  "ibhagwan/fzf-lua",
  config = function()
    require('fzf-lua').setup({
      files = { file_icons = false },
      buffers = { file_icons = false },
    })
	  require('fzf-lua').register_ui_select()
  end,
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {}
}
