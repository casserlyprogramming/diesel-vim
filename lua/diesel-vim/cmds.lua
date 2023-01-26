
local M = {}

function M.print_schema()
    vim.api.nvim_command(":terminal diesel print-schema")
end

function M.any_command(cmd)
    vim.api.nvim_command(":terminal diesel " .. cmd)
end

return M
