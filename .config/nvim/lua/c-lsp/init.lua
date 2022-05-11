vim.api.nvim_exec(
[[
augroup lsp
  au!
  au FileType java lua require('c-jdtls').setup()
augroup end
]], false)
