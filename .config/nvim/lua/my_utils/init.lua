local utils = { }

utils.print_table = function (tbl)
    for key, val in pairs(tbl) do
        print(key, val)
    end
end

return utils
