--nnoremap / :Neotree toggle current reveal_force_cwd<cr>
--nnoremap | :Neotree reveal<cr>
--nnoremap gd :Neotree float reveal_file=<cfile> reveal_force_cwd<cr>
--nnoremap <leader>b :Neotree toggle show buffers right<cr>
--nnoremap <leader>s :Neotree float git_status<cr>

vim.keymap.set('n', '|', ':Neotree toggle left reveal_force_cwd<cr>')
vim.keymap.set('n', '<leader>b', ':Neotree float buffers left<cr>')
vim.keymap.set('n', '<leader>s', ':Neotree float git_status<cr>')
