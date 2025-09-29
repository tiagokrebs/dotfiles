return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    config = function()
      vim.opt.splitright = true
      require("CopilotChat").setup({
        window = {
          splitright = true,
          width = 80,
        },
        prompts = {
          AssistLogToEvent = {
            prompt =
            "Transform the JSON below into a structured JS event object. Don't add any addytional properties, comments or values. Use single quotes for string values.",
          },
        },
      })
    end,
  },
}
