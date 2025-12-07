function Init()
    print("first test")
end

vim.api.nvim_create_user_command("Qn", Init())
