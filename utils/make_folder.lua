local M = {}

function M.make_folder(os, OSes, pathFolder)

    if os == OSes[1] then
        os.execute('mkdir "' .. pathFolder .. '"')
        print("OS: Windows, QuickNote made at" .. pathFolder)
    elseif os == OSes[2] or os == OSes[3] then
        os.execute('mkdir -p "' .. pathFolder .. '"')
        print("OS: Linx/Macos, QucikNote made at" .. pathFolder)
    end
end

return M
