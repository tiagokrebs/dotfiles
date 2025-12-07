if vim.g.vscode then
    -- VSCode extension
    require("vscode-config")
else
    -- Regular Neovim
    require("config.lazy")
    require("config.options")
    require("config.keymaps")
    require("config.autocmds")
end