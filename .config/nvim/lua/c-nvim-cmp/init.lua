local cmp = require('cmp')
local types = require('cmp.types')

local M = {}

vim.api.nvim_set_option('completeopt', 'menu,menuone,noselect')


if cmp == nil then
    error('Couldn\'t import nvim-cmp. Make sure you have nvim-cmp installed correctly.')
end

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn['UltiSnips#Anon'](args.body)
        end
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'ultisnips' },
    }, {
        { name = 'buffer' },
    })
})

local autocomplete_off = function (fl_cmp)
    fl_cmp.setup({
        completion = {
            autocomplete = false
        }
    })
end

local autocomplete_on = function (fl_cmp, fl_types)
    fl_cmp.setup({
        completion = {
            autocomplete = {
                fl_types.cmp.TriggerEvent.TextChanged,
            },
        }
    })
end

vim.keymap.set('n', '<Leader>cao', function () autocomplete_off(cmp) end, { noremap = true, desc = 'cmp: toggles autocomplete off' })
vim.keymap.set('n', '<Leader>caa', function () autocomplete_on(cmp, types) end, { noremap = true, desc = 'cmp: toggles autocomplete on' })
