local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"
-- Text do ascii art https://patorjk.com/software/taag
dashboard.section.header.val = {
  [[  __                     __                          __             ]], 
  [[ /\ \                   /\ \                  __    /\ \            ]],
  [[ \ \ \/'\     ___   _ __\ \ \____    ____    /\_\   \_\ \     __    ]],
  [[  \ \ , <    / __`\/\`'__\ \ '__`\  /',__\   \/\ \  /'_` \  /'__`\  ]],
  [[   \ \ \\`\ /\ \L\ \ \ \/ \ \ \L\ \/\__, `\   \ \ \/\ \L\ \/\  __/  ]],
  [[    \ \_\ \_\ \____/\ \_\  \ \_,__/\/\____/    \ \_\ \___,_\ \____\ ]],
  [[     \/_/\/_/\/___/  \/_/   \/___/  \/___/      \/_/\/__,_ /\/____/ ]],
}

dashboard.section.buttons.val = {
  dashboard.button("f", "" .. " Find file", ":Telescope find_files <CR>"),
  dashboard.button("e", "" .. " New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button(
    "p",
    "" .. " Find project",
    ":lua require('telescope').extensions.projects.projects()<CR>"
  ),
  dashboard.button("r", "" .. " Recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", "" .. " Find text", ":Telescope live_grep <CR>"),
  dashboard.button("s", "" .. " Find Session", ":Telescope sessions save_current=false <CR>"),
  dashboard.button("c", "" .. " Config", ":e ~/.config/nvim/init.lua <CR>"),
  dashboard.button("q", "" .. " Quit", ":qa<CR>"),
}
local function footer()
  return "tiagokrebs.com"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
