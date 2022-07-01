vim.keymap.set('n', '<Leader>tf', require('telescope.builtin').find_files,
    { noremap = true, desc = 'Telescope: find files' }
)
vim.keymap.set('n', '<Leader>tg', require('telescope.builtin').live_grep,
    { noremap = true,  desc = 'Telescope: Live grep' }
)
vim.keymap.set('n', '<Leader>tb', require('telescope.builtin').buffers,
    { noremap = true, desc = 'Telescope: Search in buffers'}
)
vim.keymap.set('n', '<Leader>th', require('telescope.builtin').help_tags,
    { noremap = true, desc = 'Telescope: search in vim help tags' }
)
vim.keymap.set('n', '<Leader>tkm', require('telescope.builtin').keymaps,
    { noremap = true, desc = 'Telescope: lookup keymaps' }
)
