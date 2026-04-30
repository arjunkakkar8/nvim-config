require('mini.comment').setup()
require('mini.files').setup()

vim.keymap.set('n', '<leader>t', MiniFiles.open, { desc = 'Open file viewer', silent = true })
