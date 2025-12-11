local os_utils = require("utils.find_os")
local make_folder = require("utils.make_folder")
local make_file = require("utils.make_file")

local pathFolder = vim.fn.expand("~/.config/QuickNote")

local pathFile = vim.fn.expand("~/.config/QuickNote/notes.txt")

local OSes = {"windows", "macos", "linux"}

local os = os_utils.get_os()

local M = {}

function M.setup()

    if vim.fn.isdirectory(pathFolder) == 0 then
        print("QuickNote does not exist.")

        make_folder.make_folder(os, OSes, pathFolder)

    else 

        print("QuickNote does exist at " .. pathFolder)

        make_file.make_file(os, pathFile, OSes)

    end
end

M.pathFile = pathFile 

return M
