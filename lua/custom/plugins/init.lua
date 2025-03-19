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
-- vim.api.nvim_set_keymap('n', '<Leader>b', ':Neotree action=focus source=buffers position=left toggle=true<cr>', { silent = true, noremap = true })
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
