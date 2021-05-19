local utils = require('my_utils')
local M = {}

M.python = function ()
    utils.opt('b', 'tabstop', 2)
    utils.opt('b', 'shiftwidth', 2)
end

--[[
M.java = function ()
    utils.opt('b', 'tabstop', 4)
    utils.opt('b', 'shiftwidth', 4)
end
]]--

return M
