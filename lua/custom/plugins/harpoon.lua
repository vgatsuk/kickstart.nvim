-- basic telescope configuration
--   local conf = require('telescope.config').values
--   local function toggle_telescope(harpoon_files)
--     local file_paths = {}
--     for _, item in ipairs(harpoon_files.items) do
--       table.insert(file_paths, item.value)
--     end
--
--     require('telescope.pickers')
--       .new({}, {
--         prompt_title = 'Harpoon',
--         finder = require('telescope.finders').new_table {
--           results = file_paths,
--         },
--         previewer = conf.file_previewer {},
--         sorter = conf.generic_sorter {},
--       })
--       :find()
--   end
--
--   vim.keymap.set('n', '<C-e>', function()
--     toggle_telescope(harpoon:list())
--   end, { desc = 'Open Telescope Harpoon Window' })

return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('harpoon').setup {
        global_settings = {
          save_on_change = true,
          mark_branch = true,
        },
      }
      local harpoon = require 'harpoon'
      local bufferlineui = require 'bufferline.ui'
      -- set up all the keymappings
      vim.keymap.set('n', '<leader>hm', function()
        harpoon:list():add()
        bufferlineui.refresh()
      end, { desc = 'Add Harpoon mark to this buffer' })
      vim.keymap.set('n', '<leader>hw', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'Toggle Harpoon Window' })
      vim.keymap.set('n', '<leader>1', function()
        harpoon:list():select(1)
      end, { desc = 'Harpoon marker 1' })
      vim.keymap.set('n', '<leader>2', function()
        harpoon:list():select(2)
      end, { desc = 'Harpoon marker 2' })
      vim.keymap.set('n', '<leader>3', function()
        harpoon:list():select(3)
      end, { desc = 'Harpoon marker 3' })
      vim.keymap.set('n', '<leader>4', function()
        harpoon:list():select(4)
      end, { desc = 'Harpoon marker 4' })
      vim.keymap.set('n', '<leader>5', function()
        harpoon:list():select(5)
      end, { desc = 'Harpoon marker 5' })
      vim.keymap.set('n', '<leader>6', function()
        harpoon:list():select(6)
      end, { desc = 'Harpoon marker 6' })
      vim.keymap.set('n', '<leader>7', function()
        harpoon:list():select(7)
      end, { desc = 'Harpoon marker 7' })
      vim.keymap.set('n', '<leader>8', function()
        harpoon:list():select(8)
      end, { desc = 'Harpoon marker 8' })
      vim.keymap.set('n', '<leader>9', function()
        harpoon:list():select(9)
      end, { desc = 'Harpoon marker 9' })

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<leader>hp', function()
        harpoon:list():prev()
      end, { desc = 'Harpoon Previous Marker' })
      vim.keymap.set('n', '<leader>hn', function()
        harpoon:list():next()
      end, { desc = 'Harpoon Next Marker' })

      vim.keymap.set('n', '<leader>hl', function()
        local logger = require 'harpoon.logger'
        logger:enable()
        logger:log(harpoon:list():get(1))
        logger:show()
      end, { desc = 'Harpoon Show Debug Log' })
    end,
  },
}
