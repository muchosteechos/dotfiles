local cus_snip_path = vim.fn.stdpath('data')..'/custom_snips/UltiSnips/'

vim.g.UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit = cus_snip_path
vim.g.UltiSnipsSnippetDirectories = {'UltiSnips', cus_snip_path}

-- mappings
-- NOTE: should use more custom made mappings see :h UltiSnips-trigger-functions
   g:UltiSnipsExpandTrigger               <tab>
   g:UltiSnipsListSnippets                <c-tab>
   g:UltiSnipsJumpForwardTrigger          <c-j>
   g:UltiSnipsJumpBackwardTrigger         <c-k>
-- we unmap expand and list trigger because we use nvim-compe
-- fallback might be nice to have though
vim.g.UltiSnipsExpandTrigger = ''
vim.g.UltiSnipsListSnippets = ''

vim.g.UltiSnipsJumpForwardTrigger = '<Tab>'
vim.g.UltiSnipsJumpBackwardTrigger = '<S-Tab>'
