return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'akinsho/bufferline.nvim',
    },
    config = function()
      require('harpoon').setup {
        global_settings = {
          save_on_change = true,
          mark_branch = true,
        },
      }
      local harpoon = require 'harpoon'
      local bufferline_groups = require 'bufferline.groups'
      local bufferline_ui = require 'bufferline.ui'
      -- set up all the keymappings
      vim.keymap.set('n', '<leader>hm', function()
        harpoon:list():add()
        -- bufferline_groups.toggle_pin()
        bufferline_ui.refresh()
      end, { desc = 'Add Harpoon mark to this buffer' })
      vim.keymap.set('n', '<leader>hd', function()
        harpoon:list():remove()
        -- bufferline_groups.toggle_pin()
        bufferline_ui.refresh()
      end, { desc = 'Add Harpoon mark to this buffer' })
      vim.keymap.set('n', '<leader>hw', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'Toggle Harpoon Window' })
      for i = 1, 9, 1 do
        vim.keymap.set('n', string.format('<leader>h%d', i), function()
          harpoon:list():select(i)
        end, { desc = string.format('Harpoon marker %d', i) })
      end

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<leader>hp', function()
        harpoon:list():prev()
      end, { desc = 'Harpoon Previous Marker' })
      vim.keymap.set('n', '<leader>hn', function()
        harpoon:list():next()
      end, { desc = 'Harpoon Next Marker' })
    end,
  },
}
