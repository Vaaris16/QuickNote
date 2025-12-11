local M = {}

function M.make_folder(osType, OSes, pathFolder)

    if osType == OSes[1] then
        os.execute('mkdir "' .. pathFolder .. '"')
        print("OS: Windows, QuickNote made at" .. pathFolder)
    elseif osType == OSes[2] or osType == OSes[3] then
        os.execute('mkdir -p "' .. pathFolder .. '"')
        print("OS: Linx/Macos, QucikNote made at" .. pathFolder)
    end
end

return M 
