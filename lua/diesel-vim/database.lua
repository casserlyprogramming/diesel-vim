
local M = {}

function M.setup()
    local db_url = ""
    repeat
        db_url = vim.fn.input("Enter a database url: ")
        print("")
    until (db_url ~= "")

    vim.api.nvim_command(":terminal diesel setup --database-url='" .. db_url .. "'")
end

function M.reset()
    vim.api.nvim_command(":terminal diesel database reset")
end

return M
