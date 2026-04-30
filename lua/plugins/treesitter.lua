return {
  "nvim-treesitter/nvim-treesitter",
  build = ':TSUpdate',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require 'nvim-treesitter.configs'.setup {
      ensure_installed = { "json", "yaml", "tsx", "markdown", "html", "svelte", "lua", "javascript", "typescript", "vim",
        "vimdoc", "query", "scss", "css", "regex" },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<CR>',
          scope_incremental = '<CR>',
          node_incremental = '<TAB>',
          node_decremental = '<S-TAB>',
        },
      },
    }
  end,
}
