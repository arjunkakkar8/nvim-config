require("conform").setup({
    formatters_by_ft = {
        html = { "prettierd" },
        svetle = { "prettierd" },
        javascript = { "prettierd" },
        scss = { "prettierd" },
        ts = { "prettierd" },
    },
    format_on_save = {
        timeout_ms = 2000,
        lsp_fallback = true,
    },
})
