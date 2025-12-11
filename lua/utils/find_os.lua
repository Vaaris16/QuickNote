local M = {}

function M.get_os()
    if vim.fn.has("win32") == 1 then
        return "windows"
    elseif vim.fn.has("macunix") == 1 then 
        return "macos"
    elseif vim.fn.has("unix") == 1 then
        return "linux"
    end
end

return M

