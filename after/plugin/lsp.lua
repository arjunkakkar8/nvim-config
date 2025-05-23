local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, buff)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({
    buffer = buff,
    preserve_mappings = false
  })
end)

-- LSPs to Enable

require('mason').setup({
  PATH = "prepend"
})
require('mason-lspconfig').setup({
  handlers = {
    lsp_zero.default_setup,
  },
})

vim.lsp.config('cssls', {
  settings = {
    css = {
      lint = {
        unknownAtRules = "ignore",
      },
    }
  }
})
vim.lsp.config('tailwindcss', {
  settings = {
    tailwindCSS = {
      experimental = {
        configFile = 'src/lib/styles/app.css',
      },
    }
  }
})


-- Autocomplete actions

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({ select = false }),

    -- Ctrl+Space to trigger completion menu
    ['<C-c>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
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
