--[[
vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, {
        pattern = {'*.c', '*.py'},
        callback = myluafunc,
})--]]
