-- -- Set theme
-- vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
--
-- -- Change the "hint" color to the "orange" color,
-- -- and make the "error" color bright red
-- vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
--
-- -- Load the colorscheme
-- local status_ok, _ = pcall(vim.cmd, "colorscheme tokyonight")
-- if not status_ok then
--   return
-- end
--

-- Default options
require('nightfox')

-- setup must be called before loading
vim.cmd("colorscheme duskfox")
