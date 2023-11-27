require("conform").setup({
    formatters_by_ft = {
        html = { "prettierd", "prettier", "eslint_d" },
        svetle = { "prettierd", "prettier", "eslint_d" },
        javascript = { "prettierd", "prettier", "eslint_d" },
        scss = { "prettierd", "prettier", "eslint_d" },
        ["_"] = { "prettierd", "prettier", "eslint_d" },
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    },
})
