local cus_snip_path = vim.fn.stdpath('data')..'/custom_snips/UltiSnips/'

vim.g.UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit = cus_snip_path
vim.g.UltiSnipsSnippetDirectories = {'UltiSnips', cus_snip_path}

-- mappings
-- NOTE: should use more custom made mappings see :h UltiSnips-trigger-functions
--
-- we unmap expand and list trigger because we use nvim-compe
-- fallback might be nice to have though
vim.g.UltiSnipsExpandTrigger = '<Leader>ux'
vim.g.UltiSnipsListSnippets = '<Leader>uls'

vim.g.UltiSnipsJumpForwardTrigger = '<Tab>'
vim.g.UltiSnipsJumpBackwardTrigger = '<S-Tab>'
