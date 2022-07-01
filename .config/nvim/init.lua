require('plugins')
require('variables')
require('options')
require('keymappings')
require('colorscheme')
require('augroups')
require('autocmds')

-- for now load lsp-config in init
-- require('jdtls').start_or_attach({cmd = {'jdtls-launch.sh'}})

local on_attach = function(client, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', '<Leader>lgD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', '<Leader>lgd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', '<Leader>lK', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<Leader>lgi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<Leader>l<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<Leader>lwa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<Leader>lwr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<Leader>lwl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<Leader>lD', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<Leader>lrn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<Leader>lca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', '<Leader>lgr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<Leader>lf', vim.lsp.buf.formatting, bufopts)
    vim.keymap.set('n', '<Leader>ltd', '<cmd>Telescope diagnostics<CR>', bufopts)
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())


require('lspconfig').pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

require('lspconfig').sumneko_lua.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
}

require('lspconfig').gopls.setup {
    on_attach = on_attach,
capabilities = capabilities,
}

require('lspconfig').rust_analyzer.setup {
    on_attach = on_attach,
capabilities = capabilities,
}
