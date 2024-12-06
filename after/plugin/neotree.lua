vim.keymap.set('n', '<leader>t', ':Neotree float toggle reveal filesystem<cr>')

require('neo-tree').setup({
  filesystem = {
    window = {
      position = 'current',
    },
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
    },
    follow_current_file = {
      enabled = true,
    }
  }
})
