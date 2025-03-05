return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'ThePrimeagen/harpoon',
    },
    config = function()
      require('bufferline').setup {
        options = {
          numbers = function(number_opts)
            local harpoon = require 'harpoon'
            local buf_name = vim.api.nvim_buf_get_name(number_opts.id)
            local harpoon_mark = harpoon:list():get_by_value(buf_name)
            local logger = require 'harpoon.logger'
            -- logger.enable()
            -- logger.log(harpoon.list().get(1))
            if harpoon_mark ~= nil then
              return string.format('%s(%s)', number_opts.id, harpoon_mark)
            else
              return string.format('(%s)', number_opts.id)
            end
            -- print 'DAFUQ'
            -- return string.format('%s.%s)--', number_opts.id, harpoon_mark)
            -- return string.format('%s.%s)--', number_opts.id, harpoon_mark)
            -- return harpoon_mark
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
