local function ascii_header(text)
  if vim.fn.executable("figlet") == 0 then return text end
  local out = vim.fn.system({ "figlet", "-f", "digital", text })
  if vim.v.shell_error ~= 0 then
    out = vim.fn.system({ "figlet", text })
    if vim.v.shell_error ~= 0 then return text end
  end
  return (out:gsub("%s+$", ""))
end

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      preset = {
        header = ascii_header(vim.fn.fnamemodify(vim.fn.getcwd(), ":t")),
      },
      sections = {
        { section = "header" },
        { section = "keys",   gap = 1, padding = 1 },
        { section = "startup" },
      },
    },
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
