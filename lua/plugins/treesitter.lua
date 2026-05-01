return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').setup()

    require('nvim-treesitter').install({
      "json", "yaml", "tsx", "markdown", "markdown_inline", "html", "svelte",
      "lua", "javascript", "typescript", "vim", "vimdoc", "query",
      "scss", "css", "regex",
    })

    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        if not vim.treesitter.language.get_lang(vim.bo[args.buf].filetype) then
          return
        end
        if not pcall(vim.treesitter.start, args.buf) then
          return
        end
        vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo[0][0].foldmethod = 'expr'
        vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
