return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' }, -- or zbirenbaum/copilot.lua
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    -- See Commands section for default commands if you want to lazy load on them
    keys = {
      { '<leader>aic', ':CopilotChat<CR>', mode = 'n', desc = 'Copilot [C]hat' },
      { '<leader>aie', ':CopilotChatExplain<CR>', mode = 'v', desc = 'Copilot [E]xplain Code' },
      { '<leader>air', ':CopilotChatReview<CR>', mode = 'v', desc = 'Copilot [R]eview Code' },
      { '<leader>aif', ':CopilotChatFix<CR>', mode = 'v', desc = 'Copilot [F]ix Code Issues' },
      { '<leader>aio', ':CopilotChatOptimize<CR>', mode = 'v', desc = 'Copilot [O]ptimize Code' },
      { '<leader>aid', ':CopilotChatDocs<CR>', mode = 'v', desc = 'Copilot Generate [D]ocumentation' },
      { '<leader>ait', ':CopilotChatTests<CR>', mode = 'v', desc = 'Copilot Generate [T]ests' },
      { '<leader>aim', ':CopilotChatCommit<CR>', mode = 'n', desc = 'Copilot Generate Commit [M]essage' },
      { '<leader>ais', ':CopilotChatCommit<CR>', mode = 'v', desc = 'Copilot Generate [S]election Commit Message' },
    },
  },
}
