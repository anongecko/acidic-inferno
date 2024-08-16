-- This file needs to have the same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "acidic-inferno",

    mappings = {
        -- Add the key mapping here
        n = {
            ["x"] =  '"_x', 
        }
    }

    -- ... your other configurations (if any) ... 
}
vim.lsp.set_log_level("debug")
return M
