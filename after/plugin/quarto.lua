local quarto = require('quarto')

quarto.setup({
    debug = false,
    closePreviewOnExit = true,
    lspFeatures = {
        enabled = true,
        languages = { 'r', 'python', 'julia', 'bash' },
        chunks = 'curly', -- 'curly' or 'all'
        diagnostics = {
            enabled = true,
            triggers = { "BufWritePost" }
        },
        completion = {
            enabled = true,
        },
    },
    codeRunner = {
        enabled = false,
        default_method = nil,   -- 'molten' or 'slime'
        ft_runners = {},        -- filetype to runner, ie. `{ python = "molten" }`.
        -- Takes precedence over `default_method`
        never_run = { "yaml" }, -- filetypes which are never sent to a code runner
    },
    keymap = {
        hover = 'K',
        definition = 'gd',
        rename = '<leader>lR',
        references = 'gr',
    }
})

vim.keymap.set('n', '<leader>qp', quarto.quartoPreview, { silent = true, noremap = true })
vim.g.R_auto_start = 2
vim.g.R_rconsole_width = 0
vim.g.R_rconsole_height = 15
vim.g.R_objbr_auto_start = 1
vim.g.R_objbr_place = "script,right"
