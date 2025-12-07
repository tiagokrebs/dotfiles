-- Basic settings
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

-- VSCode commands helper
local vscode = require('vscode-neovim')

-- Formatting
vim.keymap.set("n", "<leader>f", function()
    vscode.action("editor.action.formatDocument")
end)

-- Code actions
vim.keymap.set({"n", "v"}, "<leader>ca", function()
    vscode.action("editor.action.quickFix")
end)

-- File navigation
vim.keymap.set("n", "<leader>ff", function()
    vscode.action("workbench.action.quickOpen")
end)

vim.keymap.set("n", "<leader>fg", function()
    vscode.action("workbench.action.findInFiles")
end)
