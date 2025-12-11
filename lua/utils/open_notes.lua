local M = {}

function M.open_note(pathFile)
    vim.cmd("vsplit " .. pathFile)

    vim.cmd("vertical resize 40")

    vim.wo.number = false
    vim.wo.relativenumber = false
end

return M
