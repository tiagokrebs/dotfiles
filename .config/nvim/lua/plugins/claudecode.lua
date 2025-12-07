return {
  {
    "coder/claudecode.nvim",
    dependencies = {
      "folke/snacks.nvim",
    },
    config = true,
    keys = {
      { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
      { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
      { "<leader>ar", "<cmd>ClaudeCodeResume<cr>", desc = "Resume Claude" },
      { "<leader>aC", "<cmd>ClaudeCodeContinue<cr>", desc = "Continue Claude" },
      { "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select Model" },
      { "<leader>ab", "<cmd>ClaudeCodeAdd<cr>", desc = "Add Buffer" },
      { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
      { "<leader>aa", "<cmd>ClaudeCodeAccept<cr>", desc = "Accept Changes" },
      { "<leader>ad", "<cmd>ClaudeCodeReject<cr>", desc = "Reject Changes" },
    },
  },
}
