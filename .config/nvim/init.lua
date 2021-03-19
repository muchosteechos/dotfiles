require('plugins')
require('variables')
require('options')
require('keymappings')
require('colorscheme')

-- for now load lsp-config in init
require'lspconfig'.pyright.setup{}

-- require('c-nvim-compe')
