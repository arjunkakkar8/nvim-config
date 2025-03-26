return {
   {
    "R-nvim/R.nvim",
    lazy = false,
    config = function()
      local opts = {
        hook = {
          on_filetype = function()
            vim.api.nvim_buf_set_keymap(0, "n", "f", "<Plug>RDSendLine", {})
            vim.api.nvim_buf_set_keymap(0, "v", "f", "<Plug>RSendSelection", {})
          end
        },
        R_args = { "--quiet", "--no-save" },
        disable_cmds = {
          "RClearConsole",
          "RCustomStart",
          "RSPlot",
          "RSaveClose",
        },
        auto_start = "always",
        objbr_auto_start = true,
        rconsole_width = 0,
        rconsole_height = 15,
      }

      require("r").setup(opts)
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "markdown", "markdown_inline", "r", "rnoweb" },
        highlight = { enable = true },
      })
    end
  },
  "R-nvim/cmp-r",
  {
    "hrsh7th/nvim-cmp",
    config = function()
      require("cmp").setup({ sources = { { name = "cmp_r" } } })
      require("cmp_r").setup({})
    end,
  },
}
