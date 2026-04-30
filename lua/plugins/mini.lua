return {
  {
    'nvim-mini/mini.nvim',
    version = false,
    event = 'VeryLazy',
    keys = {
      {
        '<leader>t',
        function()
          require('mini.files').open()
        end,
        desc = 'Open file viewer',
        silent = true,
      },
    },
    config = function()
      require('mini.comment').setup()
      require('mini.files').setup()
    end,
  },
}
