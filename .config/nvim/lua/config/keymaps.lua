-- Diagnostics
vim.keymap.set("n", "gl", vim.diagnostic.open_float, {})

-- Formatting
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format({ async = true })
end, {})
vim.api.nvim_create_user_command("Format", function()
  vim.lsp.buf.format({ async = true })
end, {})
vim.keymap.set('v', '>', '>gv', { noremap = true, silent = true })
vim.keymap.set('v', '<', '<gv', { noremap = true, silent = true })

-- Neo-tree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {})

-- Terminal
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>", {})
vim.keymap.set("v", "<leader>t", ":ToggleTerm<CR>", {})
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })

-- Fuzzy find
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>", {})
vim.keymap.set("n", "<leader><leader>", "<cmd>FzfLua files<CR>", {})
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>", {})
vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<CR>", {})

-- Windows
vim.keymap.set("n", "[w", "<C-w>w", {})
vim.keymap.set("n", "]w", "<C-w>w", {})

-- Copilot
vim.keymap.set("n", "<leader>cc", "<cmd>CopilotChatToggle<CR>", {})
vim.keymap.set("n", "<leader>ccr", "<cmd>CopilotChatReset<CR>", {})

-- Code Actions
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('v', '<leader>ca', vim.lsp.buf.code_action, {})

-- Git
vim.keymap.set('n', '<leader>lg', "<cmd>LazyGit<CR>", {})
vim.keymap.set('n', '<leader>gbt', function() require('gitsigns').toggle_current_line_blame() end, {})
vim.keymap.set('n', '<leader>hp', function() require('gitsigns').preview_hunk() end, {})
vim.keymap.set('n', '<leader>hu', function() require('gitsigns').reset_hunk() end, {})

-- Markdown
vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", {})

-- Jumps
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
-- vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
vim.keymap.set('n', 'gr', function()
  require('fzf-lua').lsp_references()
end, { noremap = true, silent = true })
vim.keymap.set({"n", "i"}, "<c-j>", "<c-d>", { noremap = true })
vim.keymap.set({"n", "i"}, "<c-k>", "<c-u>", { noremap = true })
vim.keymap.set("n", "vw", "viw", { noremap = true, silent = true })

