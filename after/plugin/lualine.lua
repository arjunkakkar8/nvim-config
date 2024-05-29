require('lualine').setup {
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { 'filename' },
        lualine_x = { 'filesize' },
        lualine_y = {},
        lualine_z = { { 'filetype', colored = false, icon_only = true } }
    }
}
