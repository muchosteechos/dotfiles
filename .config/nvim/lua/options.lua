-- Helper function

local opt_scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function setopt(scope, option, value)
  opt_scopes[scope][option] = value
  if scope ~= 'o' then opt_scopes['o'][option] = value end
end


-- SETTING OPTIONS --
-- Coloring & Syntax
setopt('o', 'termguicolors', true)

-- Indentation
setopt('o', 'smartindent', true)

setopt('b', 'expandtab', true)
setopt('b', 'tabstop', 2)
setopt('b', 'shiftwidth', 2)

-- Display
setopt('w', 'wrap', false)

setopt('w', 'number', true)
-- setopt('w', 'relativenumber', true)
-- setopt('w', 'cursorline', true)

-- Buffer handling
-- setopt('o', 'hidden', true) -- buffers become hidden when abandoned

-- Window handling
setopt('o', 'splitright', true)
setopt('o', 'splitbelow', true)
