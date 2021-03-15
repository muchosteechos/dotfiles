-- Helper function
local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then 
	  scopes['o'][key] = value 
  end
end

-- Variables
local indent = 2

-- Coloring & Syntax
-- opt('o', 'termguicolors', true)

-- Indentation
opt('b', 'expandtab', true)
opt('b', 'smartindent', true)
opt('b', 'tabstop', indent)
opt('b', 'shiftwidth', indent)
