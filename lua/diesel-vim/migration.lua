
local M = {}

function M.migrate()
    vim.api.nvim_command(":terminal diesel migration run")
end

function M.redo()
    vim.api.nvim_command(":terminal diesel migration redo")
end

function M.generate()
    local migration_name = ""
    repeat
        migration_name = vim.fn.input("Enter a migration name: ")
        print("")
    until (migration_name ~= "")

    vim.api.nvim_command(":terminal diesel migration generate " .. migration_name)
end

return M
