require('lualine').setup {
  options = {
    theme = 'ayu',
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'filesize' },
    lualine_y = {},
    lualine_z = { 'diff' }
  }
}
