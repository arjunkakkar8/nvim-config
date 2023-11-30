return {
    "zbirenbaum/copilot.lua",
    config = function()
        require("copilot").setup({
            suggestion = {
                auto_trigger = true,
                keymap = {
                    accept = "<Tab>",
                    next = "<C-right>",
                    prev = "<C-left>",
                },
            },
            filetypes = {
                ["*"] = true,
            },
        })
    end,
}
