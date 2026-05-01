return {
  {
    'williamboman/mason.nvim',
    cmd = 'Mason',
    opts = {
      PATH = "prepend",
    },
  },
  {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = { 'williamboman/mason.nvim' },
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        desc = 'LSP actions',
        callback = function(event)
          local opts = { buffer = event.buf, silent = true }

          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "gl", vim.diagnostic.open_float, opts)
          vim.keymap.set('n', 'go', vim.lsp.buf.type_definition, opts)
          vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)
        end,
      })

      local severity = vim.diagnostic.severity

      vim.diagnostic.config({
        signs = {
          text = {
            [severity.ERROR] = " ",
            [severity.WARN] = " ",
            [severity.HINT] = "󰠠 ",
            [severity.INFO] = " ",
          },
        },
      })

      local servers = vim.g.lsps or {
        'cssls',
        'dockerls',
        'eslint',
        'glsl_analyzer',
        'html',
        'jsonls',
        'lua_ls',
        'pylsp',
        'ruff',
        'rust_analyzer',
        'svelte',
        'tailwindcss',
        'ts_ls',
        'yamlls',
      }

      vim.lsp.enable(servers)
    end,
  },
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      local cmp = require('cmp')

      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ['<CR>'] = cmp.mapping.confirm({ select = false }),
          ['<C-c>'] = cmp.mapping.complete(),
          ['<C-u>'] = cmp.mapping.scroll_docs(-4),
          ['<C-d>'] = cmp.mapping.scroll_docs(4),
        }),
        sources = {
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'otter' },
          { name = 'buffer' },
          { name = 'supermaven' },
        },
      })
    end,
  },
}
