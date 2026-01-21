return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Custom header with protocol
    dashboard.section.header.val = {
      "",
      "SUARÃ YAWARETÉ",
      "hunt with purpose and precision",
      "",
      "Weekdays",
      "  05:30–07:00  DEEP WORK    | Mon/Wed/Fri: strength | Tue/Thu: code/study",
      "  17:00–17:20  CARDIO       | move body, reset mind",
      "  17:30–21:00  GROW + PLAY  | growth first, then guilt-free games",
      "  21:30–05:00  SLEEP        | no high-stim screens after 21:00",
      "",
      "Weekend",
      "  Sat  CREATION   | deep code, build, learn (AM focus)",
      "  Sun  RESTORE    | nature, movement, sunlight (PM focus)",
      "       PLAY       | games, relax both days (respect sleep rule)",
      "",
      "Goal: never miss twice in a row",
      "",
    }

    -- Quick action buttons
    dashboard.section.buttons.val = {
      dashboard.button("f", "  Find file", ":lua require('fzf-lua').files()<CR>"),
      dashboard.button("r", "  Recent files", ":lua require('fzf-lua').oldfiles()<CR>"),
      dashboard.button("g", "  Find text", ":lua require('fzf-lua').live_grep()<CR>"),
      dashboard.button("e", "  New file", ":ene <BAR> startinsert<CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }

    -- Footer (optional)
    dashboard.section.footer.val = ""

    alpha.setup(dashboard.config)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
