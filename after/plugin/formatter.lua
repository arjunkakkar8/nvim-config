require("conform").setup({
    formatters_by_ft = {
        html = { "prettierd" },
        svetle = { "prettierd" },
        javascript = { "prettierd" },
        scss = { "prettierd" },
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    },
})

