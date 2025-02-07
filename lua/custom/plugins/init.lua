-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.g.termguicolors = true
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<cr>', { silent = true, noremap = true })

return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {}
    end,
  },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          numbers = function(opts)
            return string.format('%s)', opts.id)
          end,
          offsets = {
            {
              filetype = 'NvimTree',
              text = 'File Explorer',
              text_align = 'left',
              separator = true,
            },
          },
          color_icons = true,
          diagnostics = 'nvim_lsp',
          indicator = {
            style = 'underline',
          },
          move_wraps_at_ends = false, -- whether or not the move command "wraps" at the first or last position
        },
      }
    end,
  },
}
