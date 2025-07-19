return {
  "ibhagwan/fzf-lua",
  config = function()
    require('fzf-lua').setup({
      files = {
        file_icons = false,
        fd_opts =
        "--color=never --type f --hidden --follow --exclude .git --exclude node_modules --exclude dist --exclude build --exclude coverage --exclude '*.js.map' --exclude '*.map'",
        formatter = "path.filename_first"
      },
      buffers = { file_icons = false, formatter = "path.filename_first" },
    })
    require('fzf-lua').register_ui_select()
  end,
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {}
}
