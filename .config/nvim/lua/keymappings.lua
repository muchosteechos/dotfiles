-- This file defines only vim internal settings. Plugin specific mappings can be found in the
-- respective plugin configuration file (i.e. './c-<plugin>/init.lua')

-- For most mappings in this file that start with '<Leader>' follow up with an 'n'
-- i.e. '<Leader>ntr' -> "toggle relativenumber option". 
-- This is a common pattern that I use in my mappings where '<Leader>' mappings are
-- followed by a plugin specific character. 

-- split navigation
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true })

-- arrow keys
--vim.api.nvim_set_keymap('n', '<down>', 'ddp')
--vim.api.nvim_set_keymap('n', '<up>', 'ddkP')

-- toggle relativenumber option
--vim.api.nvim_set_keymap('n', '<Leader>vtr', function()
--        vim.api.nvim_win_set_option(0, 'relativenumber', !vim.api.nvim_win_get_option(0, 'relativenumber'))
--    end,
--    { noremap = true }
--

vim.keymap.set('n', '<Leader>ntr', function()
        vim.api.nvim_win_set_option(0, 'relativenumber', not vim.api.nvim_win_get_option(0, 'relativenumber'))
    end,
    { noremap = true, desc = 'Toggles \'relativenumber\' option of current window' }
)
