---@type Base46Table
local M = {}

-- Neon Inferno Color Palette
M.base_30 = {
    white = "#e72d00",             -- Slightly darker neon red for primary text
    darker_black = "#121212",
    black = "#181818", 
    black2 = "#202020",
    one_bg = "#252525",
    one_bg2 = "#2a2a2a",
    one_bg3 = "#2f2f2f",
    grey = "#353535",
    grey_fg = "#3d3d3d",
    grey_fg2 = "#444444",
    light_grey = "#4c4c4c",
    red = "#cc0000",                -- Slightly darker neon red for accents
    baby_pink = "#e65ce6",
    pink = "#cc00cc",                -- Slightly darker neon pink for highlights
    line = "#101010",
    green = "#30c90c",               -- Slightly darker neon green
    vibrant_green = "#49e623",      -- Slightly darker, more vibrant neon green
    yellow = "#e6e600",              -- Slightly darker neon yellow
    sun = "#e6e65c",
    purple = "#b300cc",
    dark_purple = "#800099",
    teal = "#00cccc",                -- Slightly darker neon cyan
    orange = "#e68a00",              -- Slightly darker neon orange
    statusline_bg = "#0a0a0a",
    lightbg = "#121212",
    pmenu_bg = "#e65ce6",            -- Slightly darker neon pink for popup menu
    folder_bg = "#800099",           -- Darker neon purple for folders
    inferno_red = "#e72d00",          -- Same as white for consistency
    inferno_orange = "#e68a00",       -- Same as orange for consistency
    inferno_yellow = "#e6e600",        -- Same as yellow for consistency
    inferno_light_orange = "#e6e65c", -- Slightly lighter neon yellow
    acidic_green = "#30c90c",          -- Slightly darker neon green
    light_red = "#cc0000",            -- Same as red for accents
    light_orange = "#e68a00",          -- Same as orange for consistency
}
-- Base 16 Colors (Adjusted)
M.base_16 = {
    base00 = M.base_30.darker_black,
    base01 = M.base_30.black2,
    base02 = M.base_30.one_bg3,
    base03 = M.base_30.grey,
    base04 = M.base_30.grey_fg,
    base05 = M.base_30.red,
    base06 = M.base_30.inferno_orange,
    base07 = M.base_30.yellow,
    base08 = M.base_30.white,
    base09 = M.base_30.inferno_orange,
    base0A = M.base_30.light_red,
    base0B = M.base_30.light_orange,
    base0C = M.base_30.orange,
    base0D = M.base_30.inferno_light_orange,
    base0E = M.base_30.inferno_red,
    base0F = M.base_30.pink,
}

-- Polish Highlights (Adapted to the new colors)
M.polish_hl = {
    syntax = {
        Include = { fg = M.base_16.base0E, bold = true }, 
    },
    treesitter = {
        ["@property"] = { fg = M.base_16.base0E },       
        ["@tag.delimiter"] = { fg = M.base_30.red },
        ["@punctuation.bracket"] = { fg = M.base_30.yellow },
        ["@punctuation.delimiter"] = { fg = M.base_30.yellow },
    },
}

-- Highlight Group Overrides (Including Integrations)
M.base46 = {
    hl_override = {
        Normal = { bg = M.base_30.black }, 
        Comment = { fg = M.base_30.acidic_green, italic = true },
        Constant = { fg = M.base_30.inferno_orange },
        String = { fg = M.base_30.light_orange },
        Identifier = { fg = M.base_30.inferno_yellow },
        Keyword = { fg = M.base_30.inferno_red },
        Operator = { fg = M.base_30.inferno_red },
        Function = { fg = M.base_30.light_red },
        Statement = { fg = M.base_30.inferno_red },
        Type = { fg = M.base_30.inferno_light_orange },
        Namespace = { fg = M.base_30.inferno_light_orange },

        -- Add more overrides if needed

        VertSplit = { fg = M.base_30.inferno_red }, -- Red separator

        -- Terminal Colors 
        Terminal = { bg = M.base_30.black, fg = M.base_30.inferno_light_orange }, 

        -- NvimTree 
        NvimTreeNormal = { bg = M.base_30.black2 }, 
        NvimTreeVertSplit = { fg = M.base_30.inferno_red },
        NvimTreeFolderIcon = { fg = M.base_30.inferno_orange },

        -- StatusLine
        StatusLine = { bg = M.base_30.black2, fg = M.base_30.inferno_light_orange },
        StatusLineNC = { bg = M.base_30.black2, fg = M.base_30.grey_fg },

        -- Terminal Divider (Acidic Green)
        TermCursor = { fg = M.base_30.acidic_green, bg = M.base_30.acidic_green},

        -- Additional NvimTree Overrides
        NvimTreeGitNew = { fg = M.base_30.green },
        NvimTreeGitDeleted = { fg = M.base_30.inferno_red },
        NvimTreeLspDiagnosticsError = { fg = M.base_30.inferno_red },
        NvimTreeLspDiagnosticsWarning = { fg = M.base_30.inferno_orange },
        NvimTreeLspDiagnosticsInformation = { fg = M.base_30.yellow }, 
        NvimTreeLspDiagnosticsHint = { fg = M.base_30.acidic_green },

        -- Telescope 
        TelescopePromptPrefix = { fg = M.base_30.inferno_red },
        TelescopePromptTitle = { fg = M.base_30.inferno_light_orange, bold = true },

        -- StatusLine & WinBar
        StatusLineGitBranch = { fg = M.base_30.inferno_light_orange },
        WinBar = { bg = M.base_30.black2, fg = M.base_30.inferno_light_orange },
        WinBarNC = { bg = M.base_30.black2, fg = M.base_30.grey_fg },

        -- LSP 
        LspReferenceText = { bg = M.base_30.one_bg2 },
        LspReferenceRead = { bg = M.base_30.one_bg2 },
        LspReferenceWrite = { bg = M.base_30.one_bg2 },

        -- WhichKey
        WhichKey = { fg = M.base_30.inferno_light_orange },
        WhichKeyGroup = { fg = M.base_30.yellow },
        WhichKeySeparator = { fg = M.base_30.grey_fg },
        WhichKeyDesc = { fg = M.base_30.light_red },
        WhichKeyFloat = { bg = M.base_30.one_bg },

        -- Indent Blankline
        IblScope = { bg = M.base_30.one_bg, fg = M.base_30.grey },

        -- CMP 
        CmpItemAbbrDeprecated = { fg = M.base_30.grey_fg, strikethrough = true },
        CmpItemAbbrMatch = { fg = M.base_30.inferno_light_orange, bold = true },
        CmpItemAbbrMatchFuzzy = { fg = M.base_30.inferno_light_orange },
        CmpItemKindClass = { fg = M.base_30.yellow },
        CmpItemKindFunction = { fg = M.base_30.light_red },
        CmpItemKindInterface = { fg = M.base_30.inferno_light_orange },
        CmpItemKindKeyword = { fg = M.base_30.inferno_red },
        CmpItemKindMethod = { fg = M.base_30.light_red },
        CmpItemKindSnippet = { fg = M.base_30.green },
        CmpItemKindVariable = { fg = M.base_30.inferno_yellow },
    },
}

M.type = "dark" 

M = require("base46").override_theme(M, "acidic-inferno")

return M
