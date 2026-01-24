return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    notifier = { enabled = true, style = "compact" },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    styles = {
      notification = {
        wo = { wrap = true },
      },
    }
  },
  keys = {
    { "<leader>bd", function() Snacks.bufdelete() end,      desc = "Delete Buffer" },
    { "<leader>gb", function() Snacks.git.blame_line() end, desc = "Git Blame Line" },
  },
}
