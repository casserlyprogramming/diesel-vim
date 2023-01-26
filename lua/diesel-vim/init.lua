
local cmds = require("diesel-vim.cmds")
local database = require("diesel-vim.database")
local migration = require("diesel-vim.migration")

local M = {}

M.migrate = migration.migrate
M.redo = migration.redo
M.generate = migration.generate
M.revert = migration.revert
M.setup = database.setup
M.reset = database.reset
M.print_schema = cmds.print_schema
M.any_command = cmds.any_command

return M
