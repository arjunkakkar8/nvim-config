return {
  {
    'nvim-mini/mini.nvim',
    version = false,
    event = 'VeryLazy',
    keys = {
      {
        '<leader>t',
        function()
          local buf_name = vim.api.nvim_buf_get_name(0)
          local path = buf_name ~= '' and vim.fn.filereadable(buf_name) == 1 and buf_name or nil
          require('mini.files').open(path)
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
