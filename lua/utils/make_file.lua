local M = {}

function M.make_file(osType, pathFile, OSes)
    if vim.fn.filereadable(pathFile) == 1 then
        print("notes.txt exists")
        return
    else

        if osType == OSes[1] then
            os.execute('type NUL > "' .. pathFile .. '"')
        elseif osType == OSes[2] or osType == OSes[3] then
            os.execute('touch "' .. pathFile ..'"')
        end
    end
end

return M
