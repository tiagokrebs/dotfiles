return {
  dir = vim.fn.stdpath("config") .. "/lazy/dracula-pro",
  name = "dracula-pro",
  lazy = false,
  priority = 1000,
  config = function()
    -- vim.opt.termguicolors = true
    -- vim.g.dracula_colorterm = 1
    vim.cmd.colorscheme("dracula_pro_van_helsing")
  end
}

