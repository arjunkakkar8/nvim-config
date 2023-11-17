--nnoremap / :Neotree toggle current reveal_force_cwd<cr>
--nnoremap | :Neotree reveal<cr>
--nnoremap gd :Neotree float reveal_file=<cfile> reveal_force_cwd<cr>
--nnoremap <leader>b :Neotree toggle show buffers right<cr>
--nnoremap <leader>s :Neotree float git_status<cr>

vim.keymap.set('n', 't', ':Neotree left reveal_force_cwd<cr>')
vim.keymap.set('n', '<leader>s', ':Neotree float git_status<cr>')

require('neo-tree').setup({
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
        },
        follow_current_file = {
            enabled = true,
        },
        hijack_netrw_behaviour = "open_current",
    }
})
