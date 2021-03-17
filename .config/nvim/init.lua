require('plugins') -- should be loaded first
require('colorscheme')
require('options')
require('variables')
require('keymappings')

require'lspconfig'.pyright.setup{}
