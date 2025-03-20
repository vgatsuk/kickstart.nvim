-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- A setup to fold files using Treesitter
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldenable = false

vim.g.termguicolors = true
-- vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<cr>', { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>e', ':Neotree action=focus source=filesystem position=left toggle=true<cr>', { silent = true, noremap = true })
-- Working with gitsigns changes
-- -- moving between git changes
vim.api.nvim_set_keymap('n', ']g', ':Gitsigns nav_hunk next<cr>', { silent = true, noremap = true, desc = '[G]itsigns nav_hunk next' })
vim.api.nvim_set_keymap('n', '[g', ':Gitsigns nav_hunk prev<cr>', { silent = true, noremap = true, desc = '[G]itsigns nav_hunk prev' })
-- -- staging/reverting git changes
vim.api.nvim_set_keymap('n', '<leader>gs', ':Gitsigns stage_hunk<cr>', { silent = true, noremap = true, desc = '[G]itsigns [s]tage_hunk' })
vim.api.nvim_set_keymap('n', '<leader>gr', ':Gitsigns reset_hunk<cr>', { silent = true, noremap = true, desc = '[G]itsigns [r]eset_hunk' })
vim.api.nvim_set_keymap('n', '<leader>gp', ':Gitsigns preview_hunk_inline<cr>', { silent = true, noremap = true, desc = '[G]itsigns [p]review_hunk_inline' })
vim.api.nvim_set_keymap('n', '<leader>gb', ':Gitsigns blame<cr>', { silent = true, noremap = true, desc = '[G]itsigns [b]lame' })
vim.api.nvim_set_keymap('n', '<leader>gq', ':Gitsigns setqflist target=all<cr>', { silent = true, noremap = true, desc = '[G]itsigns set[q]flist target=all' })
-- vim.api.nvim_set_keymap('n', '<Leader>g', ':Neotree action=focus source=github position=left toggle=true<cr>', { silent = true, noremap = true })

vim.wo.relativenumber = true
vim.wo.number = true

return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function()
      require('ibl').setup {}
    end,
  },
  {
    'tummetott/unimpaired.nvim',
    event = 'VeryLazy',
    opts = {
      -- add options here if you wish to override the default settings
    },
  },
}
