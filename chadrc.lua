-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

-- Define the necessary colors from your theme here
local black = "#181818" 
local acidic_green = "#37FD12"
local inferno_orange = "#ff501a"
local light_orange = "#ffa07a"
local inferno_yellow = "#ff8a00"
local inferno_red = "#e40026"
local light_red = "#b22222"
local inferno_light_orange = "#ffbd59"
local black2 = "#202020"
local green = "#75484f"
local grey_fg = "#3d4046"
local one_bg2 = "#2a2a2a"
local light_grey = "#4c4c4c"
local grey = "#353535"
local one_bg = "#252525"

M.base46 = {
    theme = "acidic-inferno",

    hl_override = {
        Normal = { bg = black },
        Comment = { fg = acidic_green, italic = true },
        Constant = { fg = inferno_orange },
        String = { fg = light_orange },
        Identifier = { fg = inferno_yellow },
        Keyword = { fg = inferno_red },
        Operator = { fg = inferno_red },
        Function = { fg = light_red },
        Statement = { fg = inferno_red },
        Type = { fg = inferno_light_orange },
        Namespace = { fg = inferno_light_orange },

        -- Add more overrides if needed

        VertSplit = { fg = inferno_red }, -- Red separator

        -- Terminal Colors 
        Terminal = { bg = black, fg = inferno_light_orange }, 

        -- NvimTree 
        NvimTreeNormal = { bg = black2 }, 
        NvimTreeVertSplit = { fg = inferno_red },
        NvimTreeFolderIcon = { fg = inferno_orange },

        -- StatusLine
        StatusLine = { bg = black2, fg = inferno_light_orange },
        StatusLineNC = { bg = black2, fg = grey_fg },

        -- Terminal Divider (Acidic Green)
        TermCursor = { fg = acidic_green, bg = acidic_green},

        -- Additional NvimTree Overrides
        NvimTreeGitNew = { fg = green },
        NvimTreeGitDeleted = { fg = inferno_red },
        NvimTreeLspDiagnosticsError = { fg = inferno_red },
        NvimTreeLspDiagnosticsWarning = { fg = inferno_orange },
        NvimTreeLspDiagnosticsInformation = { fg = yellow }, 
        NvimTreeLspDiagnosticsHint = { fg = acidic_green },

        -- Telescope 
        TelescopePromptPrefix = { fg = inferno_red },
        TelescopePromptTitle = { fg = inferno_light_orange, bold = true },

        -- StatusLine & WinBar
        StatusLineGitBranch = { fg = inferno_light_orange },
        WinBar = { bg = black2, fg = inferno_light_orange },
        WinBarNC = { bg = black2, fg = grey_fg },

        -- LSP 
        LspReferenceText = { bg = one_bg2 },
        LspReferenceRead = { bg = one_bg2 },
        LspReferenceWrite = { bg = one_bg2 },

        -- WhichKey
        WhichKey = { fg = inferno_light_orange },
        WhichKeyGroup = { fg = yellow },
        WhichKeySeparator = { fg = grey_fg },
        WhichKeyDesc = { fg = light_red },
        WhichKeyFloat = { bg = one_bg },

        -- Indent Blankline
        IblScope = { bg = one_bg, fg = grey },

        -- CMP 
        CmpItemAbbrDeprecated = { fg = grey_fg, strikethrough = true },
        CmpItemAbbrMatch = { fg = inferno_light_orange, bold = true },
        CmpItemAbbrMatchFuzzy = { fg = inferno_light_orange },
        CmpItemKindClass = { fg = yellow },
        CmpItemKindFunction = { fg = light_red },
        CmpItemKindInterface = { fg = inferno_light_orange },
        CmpItemKindKeyword = { fg = inferno_red },
        CmpItemKindMethod = { fg = light_red },
        CmpItemKindSnippet = { fg = green },
        CmpItemKindVariable = { fg = inferno_yellow },
    },

    -- Callback function to apply overrides after the theme is loaded
    callback = function(colors)
        -- Apply any additional overrides you might need here using the 'colors' table
        -- For example:
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = colors.one_bg }) -- Slightly darker background for floating windows
    end,
}

return M
