return {
  'folke/edgy.nvim',
  event = 'VeryLazy',
  opts = {
    left = {
      {
        title = 'Harpoon Buffers',
        ft = 'neo-tree',
        filter = function(buf)
          return vim.b[buf].neo_tree_source == 'harpoon-buffers'
        end,
        pinned = true,
        open = 'Neotree position=top harpoon-buffers',
        size = { height = 0.2 },
      },
    },
  },
}
