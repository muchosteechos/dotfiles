vim.api.nvim_exec(
[[
augroup lsp
  au!
  au FileType python lua require('ft-settings').python()
augroup end
]], false)
