local utils = require('my_utils')


-- Coloring & Syntax
utils.opt('o', 'termguicolors', true)

-- Indentation
utils.opt('o', 'smartindent', true)

utils.opt('b', 'expandtab', true)
utils.opt('b', 'tabstop', 2)
utils.opt('b', 'shiftwidth', 2)

-- Display
utils.opt('w', 'wrap', false)

utils.opt('w', 'number', true)
-- utils.opt('w', 'relativenumber', true)
utils.opt('w', 'cursorline', true)

-- Buffer handling
-- utils.opt('o', 'hidden', true) -- buffers become hidden when abandoned

-- Window handling
utils.opt('o', 'splitright', true)
utils.opt('o', 'splitbelow', true)
