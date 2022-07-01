local api = vim.api

-- colors/syntax
api.nvim_set_option('termguicolors', true)

-- indentation
api.nvim_set_option('smartindent', true)
api.nvim_set_option('expandtab', true)
api.nvim_set_option('tabstop', 4)
api.nvim_set_option('shiftwidth', 4)

-- window settings
api.nvim_win_set_option(0, 'wrap', false)
api.nvim_win_set_option(0, 'number', true)
api.nvim_win_set_option(0, 'cursorline', true)
api.nvim_win_set_option(0, 'relativenumber', true)

-- split behavior
api.nvim_set_option('splitright', true)
api.nvim_set_option('splitbelow', true)
