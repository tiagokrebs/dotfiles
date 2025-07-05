-- Diagnostics
vim.keymap.set("n", "gl", vim.diagnostic.open_float, {})

-- Formatting
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

-- Copilot
vim.keymap.set("n", "<leader>cc", "<cmd>CopilotChatToggle<CR>", {})
vim.keymap.set("n", "<leader>ccr", "<cmd>CopilotChatReset<CR>", {})

-- Code Actions
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('v', '<leader>ca', vim.lsp.buf.code_action, {})

-- Git
vim.keymap.set('n', '<leader>gg', "<cmd>LazyGit<CR>", {})

-- Markdown
vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", {})

-- Jumps
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
