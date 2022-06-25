-- empty setup using defaults
require'nvim-tree'.setup {
}

vim.api.nvim_set_keymap('n', '<Leader>nt', '', {
    noremap = true, 
    callback = require'nvim-tree'.toggle,
})
