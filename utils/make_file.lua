local M = {}

function M.make_file(os, pathFile, OSes)
    if vim.fn.filereadable(pathFile) == 1 then
        print("notes.txt exists")
        return
    else

        if os == OSes[1] then
            os.execute('type NUL > "' .. pathFile .. '"')
        elseif os == OSes[2] or os == OSes[3] then
            os.execute('touch "' .. pathFile ..'"')
        end
    end
end

return M
