-- empty setup using defaults
require'nvim-tree'.setup {
    hijack_cursor = true,
}

vim.keymap.set('n', '<Leader>et', require('nvim-tree').toggle, { noremap = true, desc = 'nvim-tree: toggle tree view' })
