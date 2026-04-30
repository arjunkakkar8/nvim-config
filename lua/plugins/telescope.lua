return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<leader>fa', function() require('telescope.builtin').find_files() end, silent = true },
      { '<leader>ff', function() require('telescope.builtin').git_files() end, silent = true },
      { '<leader>fg', function() require('telescope.builtin').live_grep() end, silent = true },
      { '<leader>fo', function() require('telescope.builtin').oldfiles() end, silent = true },
    },
  }
}
