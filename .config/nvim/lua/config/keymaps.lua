-- Neovim Diagnostics
vim.keymap.set("n", "gl", vim.diagnostic.open_float, {})

-- LSP Format
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format({ async = true })
end, {})
vim.api.nvim_create_user_command("Format", function()
  vim.lsp.buf.format({ async = true })
end, {})

-- Neo-tree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {})

-- Fuzzy find
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>", {})
vim.keymap.set("n", "<leader><leader>", "<cmd>FzfLua files<CR>", {})
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>", {})

-- Windows
vim.keymap.set("n", "[w", "<C-w>p", {})
vim.keymap.set("n", "]w", "<C-w>w", {})
