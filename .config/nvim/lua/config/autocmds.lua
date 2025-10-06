-- vim.api.nvim_create_autocmd("VimResized", {
--     pattern = "*",
--     callback = function()
--         vim.cmd("wincmd =")
--     end,
-- })

-- Example Copilot mapping
vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', { silent = true, expr = true, noremap = true })

-- Auto-detect .venv in the project root
local function detect_venv()
  local uv = vim.loop
  local root = vim.fn.getcwd() -- or use lsp.util.root_pattern if using LSP
  local venv_path = root .. "/.venv"

  local stat = uv.fs_stat(venv_path)
  if stat and stat.type == "directory" then
    local python_bin = venv_path .. "/bin/python"
    if uv.fs_stat(python_bin) then
      vim.g.python3_host_prog = python_bin
      vim.env.VIRTUAL_ENV = venv_path
      vim.env.PATH = venv_path .. "/bin:" .. vim.env.PATH
    end
  end
end

-- Run on Python file open
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = detect_venv,
})
