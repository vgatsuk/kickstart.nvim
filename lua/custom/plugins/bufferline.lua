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
            local harpoon_list = require('harpoon'):list()
            local buffer_filepath = vim.api.nvim_buf_get_name(number_opts.id)
            local harpoon_key = vim.uv.cwd()
            for i, item in ipairs(harpoon_list.items) do
              local value = item.value
              if string.sub(item.value, 1, 1) ~= '/' then
                value = harpoon_key .. '/' .. item.value
              end

              if value == buffer_filepath then
                return string.format('%d(⥤ %d)', number_opts.ordinal, i)
              end
            end
            return string.format('%d', number_opts.ordinal)
          end,
          offsets = {
            {
              filetype = 'neo-tree',
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
      -- test
      local bufferline = require 'bufferline'
      for i = 1, 9 do
        vim.keymap.set('n', string.format('<leader>b%d', i), function()
          bufferline.go_to(i, true)
        end, { desc = string.format('Bufferline marker %d', i) })
      end
      vim.keymap.set('n', '<leader>bp', function()
        bufferline.cycle(-1)
      end, { desc = 'Bufferline previous buffer' })
      vim.keymap.set('n', '<leader>bn', function()
        bufferline.cycle(1)
      end, { desc = 'Bufferline next buffer' })
    end,
  },
}
