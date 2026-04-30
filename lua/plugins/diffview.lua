return {
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewRefresh", "DiffviewFileHistory" },
    keys = {
      { '<leader>dp', ':DiffviewOpen HEAD~1..HEAD<cr>', silent = true },
      { '<leader>dr', ':DiffviewRefresh<cr>', silent = true },
      {
        '<leader>dc',
        function()
          local previous_commit = vim.fn.system('jj log -r "@-" --no-graph -T commit_id'):gsub('%s+$', '')
          local current_commit = vim.fn.system('jj log -r "@" --no-graph -T commit_id'):gsub('%s+$', '')

          vim.cmd('DiffviewOpen ' .. previous_commit .. '..' .. current_commit)
        end,
        silent = true,
      },
      { '<leader>dh', ':DiffviewFileHistory<cr>', silent = true },
    },
  }
}
