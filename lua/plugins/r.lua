return {
  {
    "R-nvim/R.nvim",
    ft = { "r", "rmd", "quarto", "qmd" },
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
        auto_start = false,
        objbr_auto_start = false,
        rconsole_width = 0,
        rconsole_height = 15,
      }

      require("r").setup(opts)
    end,
  }
}
