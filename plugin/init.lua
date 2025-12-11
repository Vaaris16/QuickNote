local setup = require("utils.setup")

local notes = require("utils.open_notes")

setup.setup()

vim.api.nvim_create_user_command("Qn", function()
    notes.open_note(setup.pathFile)
end, {})
