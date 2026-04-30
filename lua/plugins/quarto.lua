return {
  {
    'quarto-dev/quarto-nvim',
    ft = { 'quarto', 'rmd', 'qmd' },
    dependencies = {
      'jmbuhr/otter.nvim',
      'jpalardy/vim-slime',
    },
    keys = {
      {
        '<leader>qp',
        function()
          require('quarto').quartoPreview()
        end,
        silent = true,
        noremap = true,
      },
    },
    config = function()
      require('quarto').setup({
        debug = false,
        closePreviewOnExit = true,
        lspFeatures = {
          enabled = true,
          languages = { 'r', 'python', 'julia', 'bash' },
          chunks = 'curly',
          diagnostics = {
            enabled = true,
            triggers = { "BufWritePost" }
          },
          completion = {
            enabled = true,
          },
        },
        codeRunner = {
          enabled = false,
          default_method = nil,
          ft_runners = {},
          never_run = { "yaml" },
        },
        keymap = {
          hover = 'K',
          definition = 'gd',
          rename = '<leader>lR',
          references = 'gr',
        }
      })
    end,
  },
}
